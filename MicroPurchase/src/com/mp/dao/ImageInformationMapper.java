package com.mp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.mp.pojo.Imageinformation;

@Repository("imageinformation")
public interface ImageInformationMapper {
	
	List<Imageinformation> queryImageById(@Param("gid")Integer gid);
	
}
