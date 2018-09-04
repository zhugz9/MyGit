package com.mp.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mp.dao.goodsMapper;
import com.mp.pojo.Goods;
import com.mp.service.GoodsService;
import com.mp.service.TypeOfCommodityService;

@Service("goodsService")
public class GoodsServiceImpl implements GoodsService {

	@Autowired
	private goodsMapper goodsMapper;
	@Autowired
	private TypeOfCommodityService commodityService;

	@Override
	public Goods selectByPrimaryKey() {
		return goodsMapper.selectByPrimaryKey();
	}
}
