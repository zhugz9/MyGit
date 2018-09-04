package com.mp.dao;

import com.mp.pojo.SeatingCapacity;

public interface seatingCapacityMapper {
    int deleteByPrimaryKey(Integer sid);

    int insert(SeatingCapacity record);

    int insertSelective(SeatingCapacity record);

    SeatingCapacity selectByPrimaryKey(Integer sid);

    int updateByPrimaryKeySelective(SeatingCapacity record);

    int updateByPrimaryKey(SeatingCapacity record);
}