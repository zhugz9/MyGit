
package com.mp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.mp.pojo.Lous;

@Repository("lousMapper")
public interface LousMapper {

	//所有一级菜单下的第一个二级菜单的前六条数据
	List<Lous> queryLousList(@Param("tid")Integer tid);

	List<Lous> queryLousListByid(@Param("tid")Integer tid,@Param("gid")Integer gid);
	
}