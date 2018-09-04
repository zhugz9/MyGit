package com.mp.dao;

import com.mp.pojo.ReceiptAddress;

public interface receiptAddressMapper {
    int deleteByPrimaryKey(Integer rid);

    int insert(ReceiptAddress record);

    int insertSelective(ReceiptAddress record);

    ReceiptAddress selectByPrimaryKey(Integer rid);

    int updateByPrimaryKeySelective(ReceiptAddress record);

    int updateByPrimaryKey(ReceiptAddress record);
}