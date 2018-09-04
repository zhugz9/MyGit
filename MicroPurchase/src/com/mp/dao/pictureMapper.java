package com.mp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.mp.pojo.Picture;

@Repository("pictureMapper")
public interface pictureMapper {
    List<Picture> selectByPrimaryKey(@Param("pid")Integer pid);
}