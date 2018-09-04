package com.mp.dao;

import com.mp.pojo.Size;

public interface sizeMapper {
    int deleteByPrimaryKey(Integer sid);

    int insert(Size record);

    int insertSelective(Size record);

    Size selectByPrimaryKey(Integer sid);

    int updateByPrimaryKeySelective(Size record);

    int updateByPrimaryKey(Size record);
}