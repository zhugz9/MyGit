package com.mp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.mp.pojo.Lous;
import com.mp.pojo.TypeOfCommodity;
import com.mp.service.LousService;
import com.mp.vo.JsonBean;

@Controller
public class LousController {

	@Autowired
	private LousService lousService;
	
	@ResponseBody
	@RequestMapping(value="queryLousById",produces ="text/json; charset=utf-8")
	public String queryLousById(int tid){
		List<Lous> lous = lousService.queryLousListById(tid);
		JsonBean<List<Lous>> json = new JsonBean<List<Lous>>();
		json.setData(lous);
		json.setStatus(200);
		String jsonStr = JSON.toJSONString(json);
		return jsonStr;
	}
}
