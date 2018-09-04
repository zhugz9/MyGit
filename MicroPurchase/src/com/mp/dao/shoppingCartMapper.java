package com.mp.dao;

import org.apache.ibatis.annotations.Param;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.mp.pojo.ShoppingCart;

@Repository("shoppingCartMapper")
public interface shoppingCartMapper {
	//添加购物车
	int addShoppingCart(@Param("gid")Integer gid,@Param("uid")Integer uid,@Param("nums")Integer nums);

	
	//根据用户id拿到所有的购物车信息
	List<ShoppingCart> getAllForUid(Integer uid);
	
	//批量删除
	int deleteSome(String[] sids);
	
}
