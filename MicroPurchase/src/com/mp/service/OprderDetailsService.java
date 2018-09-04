package com.mp.service;

import java.util.List;

import com.mp.pojo.OprderDetails;

public interface OprderDetailsService {
	
	List<OprderDetails> getAllOrderForUid(Integer uid,int begin,int page);
	
	int getAllOrderForUidNumber(Integer uid);
	
	int deleteOrder(int did);

	//添加
	int addOrder(OprderDetails details);
}
