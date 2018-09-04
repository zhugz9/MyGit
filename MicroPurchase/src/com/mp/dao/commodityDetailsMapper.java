package com.mp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.mp.pojo.CommodityDetails;

@Repository("commodityDetailsMapper")
public interface commodityDetailsMapper {
    
	//根据gid查询商品详情
	CommodityDetails queryCommodityDetailsById(@Param("gid")Integer gid);
	
	//根据gid查询图片
	List<CommodityDetails> queryImagrById(@Param("gid")Integer gid);
	
	//查询商品单价
	double queryOriginalCost(@Param("gid")Integer gid);
	
}