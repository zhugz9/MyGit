package com.mp.dao;

import com.mp.pojo.BrowseRecords;

public interface browseRecordsMapper {
    int deleteByPrimaryKey(Integer bid);

    int insert(BrowseRecords record);

    int insertSelective(BrowseRecords record);

    BrowseRecords selectByPrimaryKey(Integer bid);

    int updateByPrimaryKeySelective(BrowseRecords record);

    int updateByPrimaryKey(BrowseRecords record);
}