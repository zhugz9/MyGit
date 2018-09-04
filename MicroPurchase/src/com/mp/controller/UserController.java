package com.mp.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang.math.RandomUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.fastjson.JSON;
import com.mp.pojo.City;
import com.mp.pojo.PersonalInformation;
import com.mp.pojo.TypeOfCommodity;
import com.mp.pojo.User;
import com.mp.service.CityService;
import com.mp.service.PersonalInformationService;
import com.mp.service.TypeOfCommodityService;
import com.mp.service.UserService;
import com.mp.util.CommonUtils;
import com.mp.util.TimeUtils;
import com.mp.vo.JsonBean;

@Controller
public class UserController {

	@Autowired
	private UserService us;

	@Autowired
	private PersonalInformationService ps;

	@Autowired
	private CityService cityService;
	@Autowired
	private TypeOfCommodityService commodityService;

	// 上传头像
	@RequestMapping(value = "/updateUser", method = RequestMethod.POST)
	public String upFile(Model model, HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam(value = "upFile") MultipartFile upFile, User user)
			throws Exception {
		String oldFileName = upFile.getOriginalFilename();
		String prefix = FilenameUtils.getExtension(oldFileName);// 后缀
		int filesize = 500000;
		System.out.println(upFile.getSize());
		if (upFile.getSize() > filesize) {// 上传大小不得超过500kb
			User us2 = us.login(user.getNickName(), user.getPassword());
			request.getSession().setAttribute("user", us2);
			request.getSession().setAttribute("errorMsg", "上传大小不超过500kb");
			return "redirect:/userData";
		} else if (CommonUtils.checkExt(prefix)) {
			String fileName = System.currentTimeMillis()
					+ RandomUtils.nextInt(1000000) + "_Persional.jpg";
			String path = request.getSession().getServletContext()
					.getRealPath("/statics/upload");
			// System.out.println(path+"---------------");
			File targetRoot = new File(path);
			if (!targetRoot.exists()) {
				targetRoot.mkdir();
			}
			File targetFile = new File(path, fileName);

			// 保存
			try {
				upFile.transferTo(targetFile);
				// 执行添加操作
				user.setHeadPortrait("statics/upload/" + fileName);
				int result = us.updateUser(user);
				User u2 = us.login(user.getNickName(), user.getPassword());
				request.getSession().setAttribute("user", u2);
				return "redirect:/userData";
			} catch (Exception e) {
				request.setAttribute("errorMsg", "上传失败:" + e.getMessage());
				e.printStackTrace();
			}
		}
		request.getRequestDispatcher("userData").forward(request, response);
		return null;
	}

	// 根据登录名查手机号
	@ResponseBody
	@RequestMapping(value = "/getPhone", produces = "text/json; charset=utf-8")
	public String getPhone(String nickName, Model model) {
		String phone = us.phoneForNickName(nickName);
		JsonBean<String> json = new JsonBean<String>();
		json.setData(phone);
		String jsonStr = JSON.toJSONString(json);
		return jsonStr;
	}

	// 找回密码
	@RequestMapping("getOldPwd")
	public String getOldPwd(String nickName, String password,
			HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		us.updatePassword(password, nickName);
		PrintWriter pw = response.getWriter();
		pw.print("<script type='text/javascript'> alert('修改成功，请再次登录'); location.href='login' </script>");
		return "login";
	}

	// 判断是否有该登录名
	@ResponseBody
	@RequestMapping(value = "/selectUserForuName", produces = "text/json; charset=utf-8")
	public String selectUserForuName(Model model, String nick_name) {
		int num = us.selectUserForuName(nick_name);
		model.addAttribute("unamePD", num);
		JsonBean<String> json = new JsonBean<String>();
		json.setData(num + "");
		String jsonStr = JSON.toJSONString(json);
		// System.out.println(jsonStr+"--------------");
		return jsonStr;
	}

	// 注册
	@RequestMapping("insertUser")
	public String insertUser(User user, String phoneOrEmail, String YZMType,
			HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		System.out.println(phoneOrEmail + "---" + YZMType);
		if (YZMType.equals("phone")) {
			user.setPhone(phoneOrEmail);
		}
		if (YZMType.equals("email")) {
			user.setEmail(phoneOrEmail);
		}
		if (user.getEmail() == null) {
			user.setEmail("");
		}
		if (user.getPhone() == null) {
			user.setPhone("");
		}
		// 默认为18
		user.setAge(18);
		user.setSex("男");
		// 默认头像
		user.setHeadPortrait("statics/images/moren.jpg");
		user.setState(1);
		int num = us.insert(user);
		PrintWriter pw = response.getWriter();
		if (num > 0) {
			request.getSession().setAttribute("acc", user.getNickName());
			request.getSession().setAttribute("pwd", user.getPassword());
			request.getSession().setAttribute("zhuan", "1");
			pw.print("<script type='text/javascript'> alert('注册成功'); location.href='login' </script>");
			return null;
		} else {
			pw.print("<script type='text/javascript'> alert('注册失败'); history.go(-1) </script>");
			return null;
		}
	}

	// 登录
	@RequestMapping("doLogin")
	public String login(Model model, String nickName, String password,
			HttpServletRequest request, HttpServletResponse response) {
		User user = us.login(nickName, password);
		// System.out.println(nickName+"--"+password);
		System.out.println(user);
		if (user == null) {
			model.addAttribute("loginErr", "-1");
			return "login";
		} else {
			// model.addAttribute("user",user);
			// 用model 从新定向到首页后，拿不到值
			request.getSession().setAttribute("user", user);
			System.out.println(user.getNickName() + "---------------");
			return "redirect:/GoToHomePageAndGetHomePageData";
		}
	}

	// 注销
	@RequestMapping("Cancellation")
	public String Cancellation(HttpServletRequest request,
			HttpServletResponse response) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:/GoToHomePageAndGetHomePageData";
	}

	// 获取个人消息
	@RequestMapping("/getInfoByPageIndex")
	public String getInfoByPageIndex(Model model, Integer pageIndex,
			HttpServletRequest request, HttpServletResponse response) {
		List<PersonalInformation> piList;
		if (pageIndex != null && pageIndex > 0 && pageIndex <= ps.getPageSize()) {
			piList = ps.getInfoList(pageIndex);
		} else {
			pageIndex = 1;
			piList = ps.getInfoList(pageIndex);
		}
		for (PersonalInformation ps : piList) {
			ps.setDate(TimeUtils.getFormatDateAddYear(TimeUtils
					.getFormatDate(ps.getDate())));
		}
		request.getSession().setAttribute("piList", piList);
		request.getSession().setAttribute("pageIndex", pageIndex);
		request.getSession().setAttribute("pageSize", ps.getPageSize());

		// 城市
		List<City> cities = cityService.selectByPrimaryKey();
		// 一级菜单
		List<TypeOfCommodity> commodities = commodityService
				.queryParentIdIsNull();
		// 一二级菜单
		List<TypeOfCommodity> commodities2 = commodityService
				.queryTypeOfCommodityById(commodities.size());

		// 城市
		request.setAttribute("cities", cities);
		// 一级菜单
		model.addAttribute("commodities", commodities);
		// 一二级菜单
		model.addAttribute("commodities2", commodities2);

		return "user_message";
	}

	// 删除
	@RequestMapping("/deleteInfo")
	public String deleteInfo(Integer[] selectPid, HttpServletRequest request,
			HttpServletResponse response) {
		ps.deleteInfoMation(selectPid);
		return "redirect:/getInfoByPageIndex";
	}

	// 获取 消息详细信息
	@RequestMapping("/getMessageInfoById")
	public String deleteInfo(int id, Model model, HttpServletRequest request,
			HttpServletResponse response) {
		PersonalInformation pi = ps.getMessageInfoById(id);
		pi.setDate(TimeUtils.getFormatDate(pi.getDate()));
		request.getSession().setAttribute("pi", pi);

		// 城市
		List<City> cities = cityService.selectByPrimaryKey();
		// 一级菜单
		List<TypeOfCommodity> commodities = commodityService
				.queryParentIdIsNull();
		// 一二级菜单
		List<TypeOfCommodity> commodities2 = commodityService
				.queryTypeOfCommodityById(commodities.size());

		// 城市
		request.setAttribute("cities", cities);
		// 一级菜单
		model.addAttribute("commodities", commodities);
		// 一二级菜单
		model.addAttribute("commodities2", commodities2);

		return "user_messagedetails";
	}

}
