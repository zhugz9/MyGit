package com.mp.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.mp.pojo.LouImages;

@Repository("lousImagesMapper")
public interface LousImagesMapper {
	
	List<LouImages> queryAllLouImages();
	
}
