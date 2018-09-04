package com.mp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mp.dao.LousImagesMapper;
import com.mp.pojo.LouImages;
import com.mp.service.LouImagesService;

@Service("louImagesService")
public class LouImagesServiceImpl implements LouImagesService {
	
	@Autowired
	private LousImagesMapper imagesMapper;
	
	@Override
	public List<LouImages> queryAllLouImages() {
		// TODO Auto-generated method stub
		List<LouImages> a = imagesMapper.queryAllLouImages();
		return imagesMapper.queryAllLouImages();
	}

}