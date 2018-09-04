package com.mp.dao;

import com.mp.pojo.CommodityCollection;

public interface commodityCollectionMapper {
    int deleteByPrimaryKey(Integer cid);

    int insert(CommodityCollection record);

    int insertSelective(CommodityCollection record);

    CommodityCollection selectByPrimaryKey(Integer cid);

    int updateByPrimaryKeySelective(CommodityCollection record);

    int updateByPrimaryKey(CommodityCollection record);
}