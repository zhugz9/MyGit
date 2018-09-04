package com.mp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.mp.pojo.OprderDetails;

@Repository("oprderDetailsMapper")
public interface oprderDetailsMapper {
	
	//查询所有订单
	List<OprderDetails> getAllOrderForUid(@Param("uid")Integer uid,@Param("begin")int begin,@Param("page")int page);
	
	//数量
	int getAllOrderForUidNumber(Integer uid);
	
	//删除
	int deleteOrder(int did);
	
	//添加
	int addOrder(OprderDetails details);
	
    int deleteByPrimaryKey(Integer did);

    int insert(OprderDetails record);

    int insertSelective(OprderDetails record);

    OprderDetails selectByPrimaryKey(Integer did);

    int updateByPrimaryKeySelective(OprderDetails record);

    int updateByPrimaryKey(OprderDetails record);
}