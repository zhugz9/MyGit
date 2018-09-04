package com.mp.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mp.dao.userMapper;
import com.mp.pojo.User;
import com.mp.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	private userMapper um;
	
	@Override
	public int selectUserForuName(String uname) {
		return um.selectUserForuName(uname);
	}

	@Override
	public int insert(User user) {
		return um.insert(user);
	}

	@Override
	public User login(String nickName, String password) {
		return um.login(nickName, password);
	}

	@Override
	public int updatePassword(String password, String nickName) {
		return um.updatePassword(password, nickName);
	}

	@Override
	public String phoneForNickName(String nickName) {
		return um.phoneForNickName(nickName);
	}

	@Override
	public int updateUser(User user) {
		return um.updateUser(user);
	}

}
