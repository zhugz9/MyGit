package com.mp.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.mp.pojo.CommodityDetails;

public interface CommodityDetailsService {

	CommodityDetails queryCommodityDetailsById(Integer gid);

	//根据gid查询图片
	List<CommodityDetails> queryImagrById(Integer gid);
	
	//查询商品单价
	double queryOriginalCost(Integer gid);
}
