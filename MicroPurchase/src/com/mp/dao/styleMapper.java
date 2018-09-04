package com.mp.dao;

import com.mp.pojo.Style;

public interface styleMapper {
    int deleteByPrimaryKey(Integer sid);

    int insert(Style record);

    int insertSelective(Style record);

    Style selectByPrimaryKey(Integer sid);

    int updateByPrimaryKeySelective(Style record);

    int updateByPrimaryKey(Style record);
}