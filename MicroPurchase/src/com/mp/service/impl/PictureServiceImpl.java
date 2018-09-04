package com.mp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mp.dao.pictureMapper;
import com.mp.pojo.Picture;
import com.mp.service.PictureService;

@Service("pictureService")
public class PictureServiceImpl implements PictureService {

	@Autowired
	private pictureMapper mapper;
	
	@Override
	public List<Picture> selectByPrimaryKey(Integer pid) {
		return mapper.selectByPrimaryKey(pid);
	}

}
