package com.mp.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.mp.pojo.Lous;

public interface LousService {
	List<Lous> queryLousList();
	

	List<Lous> queryLousListById(Integer tid);

	List<Lous> queryLousListByid(Integer tid,Integer gid);
}