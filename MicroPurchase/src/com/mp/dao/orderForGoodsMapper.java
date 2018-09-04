package com.mp.dao;

import org.springframework.stereotype.Repository;

import com.mp.pojo.OrderForGoods;

@Repository("orderForGoodsMapper")
public interface orderForGoodsMapper {
    
	//添加订单
	int addorderForGoods(OrderForGoods forGoods);
	
}