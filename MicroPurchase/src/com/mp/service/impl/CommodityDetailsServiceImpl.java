package com.mp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mp.dao.commodityDetailsMapper;
import com.mp.pojo.CommodityDetails;
import com.mp.service.CommodityDetailsService;

@Service("CommodityDetailsService")
public class CommodityDetailsServiceImpl implements CommodityDetailsService {
	
	@Autowired
	private commodityDetailsMapper commodityDetailsMapper;
	
	@Override
	public CommodityDetails queryCommodityDetailsById(Integer gid) {
		// TODO Auto-generated method stub
		return commodityDetailsMapper.queryCommodityDetailsById(gid);
	}

	@Override
	public List<CommodityDetails> queryImagrById(Integer gid) {
		// TODO Auto-generated method stub
		return commodityDetailsMapper.queryImagrById(gid);
	}

	@Override
	public double queryOriginalCost(Integer gid) {
		// TODO Auto-generated method stub
		return commodityDetailsMapper.queryOriginalCost(gid);
	}

}
