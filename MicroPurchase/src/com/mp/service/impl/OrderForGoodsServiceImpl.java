package com.mp.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mp.dao.oprderDetailsMapper;
import com.mp.dao.orderForGoodsMapper;
import com.mp.pojo.OrderForGoods;
import com.mp.service.OrderForGoodsService;

@Service("orderForGoodsService")
public class OrderForGoodsServiceImpl implements OrderForGoodsService {
	
	@Autowired
	private orderForGoodsMapper forGoodsMapper;
	@Override
	public int addorderForGoods(OrderForGoods forGoods) {
		// TODO Auto-generated method stub
		return forGoodsMapper.addorderForGoods(forGoods);
	}

}
