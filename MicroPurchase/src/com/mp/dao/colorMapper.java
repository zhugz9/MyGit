package com.mp.dao;

import com.mp.pojo.Color;

public interface colorMapper {
    int deleteByPrimaryKey(Integer cid);

    int insert(Color record);

    int insertSelective(Color record);

    Color selectByPrimaryKey(Integer cid);

    int updateByPrimaryKeySelective(Color record);

    int updateByPrimaryKey(Color record);
}