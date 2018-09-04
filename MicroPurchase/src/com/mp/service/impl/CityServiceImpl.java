package com.mp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mp.dao.cityMapper;
import com.mp.pojo.City;
import com.mp.service.CityService;

@Service("cityService")
public class CityServiceImpl implements CityService {
	
	@Autowired
	private cityMapper mapper;
	
	@Override
	public List<City> selectByPrimaryKey() {
		return mapper.selectByPrimaryKey();
	}

}
