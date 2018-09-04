package com.mp.service;

import java.util.List;

import com.mp.pojo.Picture;

public interface PictureService {
	List<Picture> selectByPrimaryKey(Integer pid);
}
