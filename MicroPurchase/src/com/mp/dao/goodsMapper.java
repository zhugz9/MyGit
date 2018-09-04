package com.mp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.mp.pojo.Goods;
import com.mp.pojo.Lous;

@Repository("goodsMapper")
public interface goodsMapper {
    int deleteByPrimaryKey(Integer gid);
    
    Goods selectByPrimaryKey();
    
}