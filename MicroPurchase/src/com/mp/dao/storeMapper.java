package com.mp.dao;

import com.mp.pojo.Store;

public interface storeMapper {
    int deleteByPrimaryKey(Integer sid);

    int insert(Store record);

    int insertSelective(Store record);

    Store selectByPrimaryKey(Integer sid);

    int updateByPrimaryKeySelective(Store record);

    int updateByPrimaryKey(Store record);
}