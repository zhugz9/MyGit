package com.mp.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.mp.pojo.City;
import com.mp.pojo.CommodityDetails;
import com.mp.pojo.Imageinformation;
import com.mp.pojo.Lous;
import com.mp.pojo.TypeOfCommodity;
import com.mp.pojo.User;
import com.mp.service.CityService;
import com.mp.service.CommodityDetailsService;
import com.mp.service.ImageInformationService;
import com.mp.service.LousService;
import com.mp.service.ShoppingCartService;
import com.mp.service.TypeOfCommodityService;
import com.mp.vo.JsonBean;

@Controller
public class CommodityDetailsController {
	@Autowired
	private LousService lousService;
	@Autowired
	private CommodityDetailsService commodityDetailsService;
	@Autowired
	private CityService cityService;
	@Autowired
	private TypeOfCommodityService commodityService;
	@Autowired
	private ShoppingCartService cartService;
	@Autowired
	private ImageInformationService imageInformationService;

	@RequestMapping("loadCommodityDetails")
	public String LoadCommodityDetails(int gid, int tid,
			HttpServletRequest request, HttpServletResponse response) {
		// 商品详情
		CommodityDetails commodityDetails = commodityDetailsService
				.queryCommodityDetailsById(gid);
		// 城市
		List<City> cities = cityService.selectByPrimaryKey();
		// 一级菜单
		List<TypeOfCommodity> commodities = commodityService
				.queryParentIdIsNull();
		// 一二级菜单
		List<TypeOfCommodity> commodities2 = commodityService
				.queryTypeOfCommodityById(commodities.size());
		// 商品推荐
		List<Lous> lous = lousService.queryLousListByid(tid, gid);
		// 商品图片
		List<CommodityDetails> images = commodityDetailsService
				.queryImagrById(gid);
		// 产品信息
		List<Imageinformation> imageinformations = imageInformationService
				.queryImageById(gid);
		/*
		 * System.out.println("商品详情："+commodityDetails.getGname());
		 * System.out.println("城市："+cities.size());
		 * System.out.println("一级菜单："+commodities.size());
		 * System.out.println("一二级菜单："+commodities2.size());
		 */

		// 商品图片
		request.setAttribute("images", images);
		// 商品详情
		request.setAttribute("commodityDetails", commodityDetails);
		// 城市
		request.setAttribute("cities", cities);
		// 一级菜单
		request.setAttribute("commodities", commodities);
		// 一二级菜单
		request.setAttribute("commodities2", commodities2);
		// 商品推荐
		request.setAttribute("lous", lous);
		// 商品信息
		request.setAttribute("imageinformations", imageinformations);
		return "commodityDetails";
	}

	// 添加购物车
	@ResponseBody
	@RequestMapping(value = "addshoppingcart", produces = "text/json; charset=utf-8")
	public String Addshoppingcart(int gid, int nums,
			HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		int uid = user.getUid();
		int result = cartService.addShoppingCart(gid, uid, nums);
		JsonBean<Integer> json = new JsonBean<Integer>();
		if (result > 0) {
			json.setStatus(200);
		} else {
			json.setStatus(-1);
		}
		String jsonStr = JSON.toJSONString(json);
		return jsonStr;
	}

	// 是否登陆
	@ResponseBody
	@RequestMapping(value = "isLogin", produces = "text/json; charset=utf-8")
	public String isLogin(HttpServletRequest request, HttpServletResponse response) {
		response.setCharacterEncoding("utf-8");
		response.setContentType("textml");

		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		JsonBean<Integer> json = new JsonBean<Integer>();
		if (user !=  null) {
			json.setStatus(200);
		} else {
			json.setStatus(-1);
		}
		String jsonStr = JSON.toJSONString(json);
		return jsonStr;
	}

}
