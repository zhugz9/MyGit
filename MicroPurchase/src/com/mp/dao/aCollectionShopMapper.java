package com.mp.dao;

import com.mp.pojo.ACollectionShop;

public interface aCollectionShopMapper {
    int deleteByPrimaryKey(Integer cid);

    int insert(ACollectionShop record);

    int insertSelective(ACollectionShop record);

    ACollectionShop selectByPrimaryKey(Integer cid);

    int updateByPrimaryKeySelective(ACollectionShop record);

    int updateByPrimaryKey(ACollectionShop record);
}