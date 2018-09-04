package com.mp.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.mp.pojo.Wheel;

@Repository("wheelMapper")
public interface wheelMapper {
	
	//查询
    List<Wheel> selectByPrimaryKey();
    
}