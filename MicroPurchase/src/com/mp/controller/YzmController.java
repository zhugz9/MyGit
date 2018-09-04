package com.mp.controller;

import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.aliyuncs.exceptions.ClientException;
import com.aliyuncs.exceptions.ServerException;
import com.mp.service.EmailService;
import com.mp.util.GraphicHelper;
import com.mp.util.VerificationCode;
import com.mp.vo.JsonBean;

@Controller
public class YzmController {

	private static final long serialVersionUID = 3398560501558431737L;
	
	@Autowired
	private EmailService es;
	
	@RequestMapping("/getYZM")
	protected String getYZM(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();

		// 从请求中获得 URI ( 统一资源标识符 )
		String uri = request.getRequestURI();
		System.out.println("hello : " + uri);

		final int width = 150; // 图片宽度
		final int height = 50; // 图片高度
		final String imgType = "jpeg"; // 指定图片格式 (不是指MIME类型)
		final OutputStream output = response.getOutputStream(); // 获得可以向客户端返回图片的输出流
		// (字节流)
		String code = GraphicHelper.create(width, height, imgType, output);
		// System.out.println("验证码内容: " + code);

		session.setAttribute(uri, code);
		session.setAttribute("codeTest", code);

		return null;
	}
	
	//判断验证码
	@ResponseBody
	@RequestMapping(value="/checkYZM",produces ="text/json; charset=utf-8")
	public String checkYZM(HttpServletRequest request,HttpServletResponse response,String YZM){
		String codeTest = (String) request.getSession().getAttribute("codeTest");
		JsonBean<String> json = new JsonBean<String>();
		System.out.println(codeTest+"---------"+YZM);
		if(codeTest.equals(YZM)){
			json.setData("1");
		}else{
			json.setData("0");
		}
		String jsonStr = JSON.toJSONString(json);
		return jsonStr;
	}

	@ResponseBody
	@RequestMapping(value="/phoneYZM",produces ="text/json; charset=utf-8")
	public String phoneYZM(String phone,HttpServletRequest request,HttpServletResponse response){
		//问题  不可以使用post  使用get测试
		JsonBean<String> json = new JsonBean<String>();
		try {
			String code = VerificationCode.YZM(phone);
			json.setData(code);
		} catch (ServerException e) {
			e.printStackTrace();
		} catch (ClientException e) {
			e.printStackTrace();
		}
		String jsonStr = JSON.toJSONString(json);
		return jsonStr;
	}
	
	//邮箱验证码
	//如果写上@ResponseBody 代表是返回参数而不是页面
	@ResponseBody
	@RequestMapping(value="/emailYZM",produces ="text/json; charset=utf-8")
	public String emailYZM(String phone,HttpServletRequest request,HttpServletResponse response){
		JsonBean<String> json = new JsonBean<String>();
		//备注 phone为email
		String str=es.SendEmail(phone);
		json.setData(str);
		String jsonStr = JSON.toJSONString(json);
		return jsonStr;
	}

}
