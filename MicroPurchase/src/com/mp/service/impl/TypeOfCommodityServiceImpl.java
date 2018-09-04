package com.mp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mp.dao.typeOfCommodityMapper;
import com.mp.pojo.TypeOfCommodity;
import com.mp.service.TypeOfCommodityService;

@Service("typeOfCommodityService")
public class TypeOfCommodityServiceImpl implements TypeOfCommodityService {
	
	@Autowired
	private typeOfCommodityMapper commodityMapper;
	
	@Override
	public List<TypeOfCommodity> queryParentIdIsNull() {
		// TODO Auto-generated method stub
		return commodityMapper.queryParentIdIsNull();
	}

	@Override
	public List<TypeOfCommodity> queryTypeOfCommodityById(Integer tid) {
		// TODO Auto-generated method stub
		return commodityMapper.queryTypeOfCommodityById(tid);
	}

	@Override
	public List<TypeOfCommodity> queryTypeOfCommodityTwoAll() {
		// TODO Auto-generated method stub
		return commodityMapper.queryTypeOfCommodityTwoAll();
	}

}
