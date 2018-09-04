package com.mp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mp.dao.wheelMapper;
import com.mp.pojo.Wheel;
import com.mp.service.WheelService;

@Service("wheelService")
public class WheelServiceImpl implements WheelService {

	@Autowired
	private wheelMapper mapper;
	@Override
	public List<Wheel> selectByPrimaryKey() {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey();
	}

}
