package com.mp.service;

import java.util.List;

import com.mp.pojo.ShoppingCart;

public interface ShoppingCartService {
	
	List<ShoppingCart> getAllForUid(Integer uid);
	
	int addShoppingCart(Integer gid,Integer uid,Integer nums);
	
	int deleteSome(String[] sids);
}
