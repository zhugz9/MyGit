package com.mp.dao;

import com.mp.pojo.FoodFlavor;

public interface foodFlavorMapper {
    int deleteByPrimaryKey(Integer fid);

    int insert(FoodFlavor record);

    int insertSelective(FoodFlavor record);

    FoodFlavor selectByPrimaryKey(Integer fid);

    int updateByPrimaryKeySelective(FoodFlavor record);

    int updateByPrimaryKey(FoodFlavor record);
}