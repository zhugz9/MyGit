

package com.mp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mp.pojo.City;
import com.mp.pojo.LouImages;
import com.mp.pojo.Lous;
import com.mp.pojo.TypeOfCommodity;
import com.mp.pojo.Wheel;
import com.mp.service.CityService;
import com.mp.service.LouImagesService;
import com.mp.service.LousService;
import com.mp.service.TypeOfCommodityService;
import com.mp.service.WheelService;

@Controller
public class MainController {
	
	@Autowired
	private LousService lousService;
	@Autowired
	private CityService cityService;
	@Autowired
	private TypeOfCommodityService commodityService;
	@Autowired
	private WheelService wheelService;
	@Autowired
	private LouImagesService imagesService;
	
	
	//前往首页并获取首页数据
	@RequestMapping("/GoToHomePageAndGetHomePageData") 
	public String GoToHomePageAndGetHomePageData(Model model,HttpServletRequest request,HttpServletResponse response){
		
		//城市
		List<City> cities = cityService.selectByPrimaryKey();
		//一级菜单
		List<TypeOfCommodity> commodities = commodityService.queryParentIdIsNull();
		//一二级菜单
		List<TypeOfCommodity> commodities2 = commodityService.queryTypeOfCommodityById(commodities.size());
		//轮播
		List<Wheel> wheels = wheelService.selectByPrimaryKey();
		//商品详情
		List<Lous> lous = lousService.queryLousList();
		//楼层图片
		List<LouImages> images = imagesService.queryAllLouImages();
		
		//城市
		request.setAttribute("cities", cities);
		//一级菜单
		model.addAttribute("commodities", commodities);
		//一二级菜单
		model.addAttribute("commodities2", commodities2);
		//轮播
		model.addAttribute("wheels", wheels);
		//商品详情
		model.addAttribute("lous", lous);
		//楼层图片
		model.addAttribute("images", images);
		
		return "main";
	}
}
