package com.mp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mp.dao.ImageInformationMapper;
import com.mp.pojo.Imageinformation;
import com.mp.service.ImageInformationService;

@Service("imageInformationService")
public class ImageinformationServiceImpl implements ImageInformationService {
	
	@Autowired
	private ImageInformationMapper imageInformationMapper;
	
	@Override
	public List<Imageinformation> queryImageById(Integer gid) {
		// TODO Auto-generated method stub
		return imageInformationMapper.queryImageById(gid);
	}

}
