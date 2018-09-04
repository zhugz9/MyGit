package com.mp.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Array;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mp.pojo.City;
import com.mp.pojo.OprderDetails;
import com.mp.pojo.ShoppingCart;
import com.mp.pojo.TypeOfCommodity;
import com.mp.pojo.User;
import com.mp.service.CityService;
import com.mp.service.OprderDetailsService;
import com.mp.service.ShoppingCartService;
import com.mp.service.TypeOfCommodityService;
import com.mp.util.CommonUtils;

@Controller
public class SpCarController {

	@Autowired
	private ShoppingCartService scs;

	@Autowired
	private OprderDetailsService ods;

	@Autowired
	private CityService cityService;
	@Autowired
	private TypeOfCommodityService commodityService;
	
	//批量删除购物车（结算）
	@RequestMapping("deleteSome")
	public String deleteSome(int[] sids){
		//scs.deleteSome(sids);
		return null;
	}
	
	// 删除订单
	@RequestMapping("deleteOrder")
	public String deleteOrder(int did, HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		int num = ods.deleteOrder(did);
		PrintWriter pw = response.getWriter();
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		if (num != 0) {
			return "redirect:/getAllOrderForUid?uid=" + user.getUid()
					+ "&begin=1";
		} else {
			pw.print("<script type='text/javascript'> alert('删除失败，请稍后再试'); history.go(-1); </script>");
			return null;
		}
	}

	// 显示所有订单
	@RequestMapping("getAllOrderForUid")
	public String getAllOrderForUid(Model model, Integer uid, Integer begin,
			HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		PrintWriter pw = response.getWriter();
		
		if (user == null) {
			pw.print("<script type='text/javascript'> alert('请先登录再进行操作！'); location.href='login' </script>");
			return null;
		}
		
		if(uid < 1){
			uid = user.getUid();
		}
		
		// ---------------------------------------------------------
		if (begin == null || begin == 0) {
			begin = 1;
		}
		// System.out.println(begin+"---------------------");

		int num = ods.getAllOrderForUidNumber(uid);
		int allnum = num % CommonUtils.BeginIndex == 0 ? num
				/ CommonUtils.BeginIndex : num / CommonUtils.BeginIndex + 1;

		if (begin < 1) {
			begin = 1;
		}
		if (begin > allnum) {
			begin = allnum;
		}
		int beginIndex = (begin - 1) * CommonUtils.BeginIndex;
		List<OprderDetails> odList=null;
		try {
			odList= ods.getAllOrderForUid(uid, beginIndex,
					CommonUtils.BeginIndex);
		} catch (Exception e) {
			return "redirect:/PurchaseRecord";
		}	
		if(odList==null){
			return "redirect:/PurchaseRecord";
		}
		request.getSession().setAttribute("OprderDetailsList", odList);
		List<Integer> nums = new ArrayList<Integer>();
		for (int i = 1; i <= allnum; i++) {
			nums.add(i);
		}

		request.getSession().setAttribute("AllNum", nums);
		request.getSession().setAttribute("pageNow", begin);

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

		return "redirect:/PurchaseRecord";
	}

	// 拿到数据
	@RequestMapping("getAllForUid")
	public String getAllForUid(Integer uid, HttpServletRequest request,
			HttpServletResponse response) {
		if (uid == null) {
			return "redirect:/ShoppingCar";
		}
		if(uid < 1){
			HttpSession session = request.getSession();
			User user = (User) session.getAttribute("user");
			uid = user.getUid();
		}
		List<ShoppingCart> sc = scs.getAllForUid(uid);
		request.getSession().setAttribute("ShoppingCartList", sc);
		System.out.println(sc);
		return "redirect:/ShoppingCar";
	}

}
