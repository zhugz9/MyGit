package com.mp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mp.dao.oprderDetailsMapper;
import com.mp.pojo.OprderDetails;
import com.mp.service.OprderDetailsService;

@Service("OprderDetailsService")
public class OprderDetailsServiceImpl implements OprderDetailsService {

	@Autowired
	private oprderDetailsMapper odm;
	
	@Override
	public int getAllOrderForUidNumber(Integer uid) {
		return odm.getAllOrderForUidNumber(uid);
	}

	@Override
	public List<OprderDetails> getAllOrderForUid(Integer uid, int begin,
			int page) {
		return odm.getAllOrderForUid(uid, begin, page);
	}

	@Override
	public int deleteOrder(int did) {
		return odm.deleteOrder(did);
	}

	@Override
	public int addOrder(OprderDetails details) {
		// TODO Auto-generated method stub
		return odm.addOrder(details);
	}

}
