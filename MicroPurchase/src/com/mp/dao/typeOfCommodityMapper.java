package com.mp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.mp.pojo.TypeOfCommodity;

@Repository("typeOfCommodityMapper")
public interface typeOfCommodityMapper {
	//查询一级菜单
	List<TypeOfCommodity> queryParentIdIsNull();
	
	//根据一级查询二级
	List<TypeOfCommodity> queryTypeOfCommodityById(@Param("tid")Integer tid);
	
	//查询每个一级菜单下的第一个二级菜单
	List<TypeOfCommodity> queryTypeOfCommodityTwoAll();
	
}