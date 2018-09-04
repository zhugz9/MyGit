package com.mp.service;

import com.mp.pojo.User;

public interface UserService {
	
	//修改用户
    int updateUser(User user);

	
	//查询是否存在该用户
    int selectUserForuName(String nick_name);
    
    //新增
    int insert(User user);
    
    //登录
    User login(String nickName,String password);
    
    //修改\找回密码
    int updatePassword(String password,String nickName);
    
    //根据登录名查询手机/邮箱
    String phoneForNickName(String nickName);
}
