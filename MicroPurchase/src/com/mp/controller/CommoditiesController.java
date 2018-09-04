package com.mp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.mp.pojo.TypeOfCommodity;
import com.mp.service.TypeOfCommodityService;
import com.mp.vo.JsonBean;

@Controller
public class CommoditiesController {

	@Autowired
	private TypeOfCommodityService commodityService;
	
	@ResponseBody
	@RequestMapping(value="queryTypeOfCommodityById",produces ="text/json; charset=utf-8")
	public String queryTypeOfCommodityById(int tid){
		List<TypeOfCommodity> commodities = commodityService.queryTypeOfCommodityById(tid);
		JsonBean<List<TypeOfCommodity>> json = new JsonBean<List<TypeOfCommodity>>();
		json.setData(commodities);
		json.setStatus(200);
		String jsonStr = JSON.toJSONString(json);
		return jsonStr;
	}
	
	
}

