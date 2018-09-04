package com.mp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mp.dao.shoppingCartMapper;
import com.mp.pojo.ShoppingCart;
import com.mp.service.ShoppingCartService;

@Service("ShoppingCartService")
public class ShoppingCartServiceImpl implements ShoppingCartService {
	
	@Autowired
	private shoppingCartMapper cartMapper;
	
	@Override
	public int addShoppingCart(Integer gid, Integer uid, Integer nums) {
		// TODO Auto-generated method stub
		return cartMapper.addShoppingCart(gid, uid, nums);
	}

	@Autowired
	private shoppingCartMapper scm;
	
	@Override
	public List<ShoppingCart> getAllForUid(Integer uid) {
		return scm.getAllForUid(uid);
	}

	@Override
	public int deleteSome(String[] sids) {
		return scm.deleteSome(sids);
	}

}
