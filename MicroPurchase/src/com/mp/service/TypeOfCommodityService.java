package com.mp.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.mp.pojo.TypeOfCommodity;

public interface TypeOfCommodityService {
	
	//查询一级菜单
	List<TypeOfCommodity> queryParentIdIsNull();

	//根据一级查询二级
	List<TypeOfCommodity> queryTypeOfCommodityById(Integer tid);
	
	//查询每个一级菜单下的第一个二级菜单
	List<TypeOfCommodity> queryTypeOfCommodityTwoAll();
	
}
