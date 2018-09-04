package com.mp.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.mp.pojo.Imageinformation;

public interface ImageInformationService {
	
	List<Imageinformation> queryImageById(Integer gid);
}
