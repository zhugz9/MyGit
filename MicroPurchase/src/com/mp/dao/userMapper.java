package com.mp.dao;

import org.apache.ibatis.annotations.Param;

import com.mp.pojo.User;

public interface userMapper {
    int deleteByPrimaryKey(Integer uid);
    
    //修改用户
    int updateUser(User user);

    //登录
    User login(@Param("nickName")String nickName,@Param("password")String password);
    
    //注册
    int insert(User user);
    
    //查询是否存在该用户
    int selectUserForuName(String uname);
    
    //修改/找回密码
    int updatePassword(@Param("password")String password,@Param("nickName") String nickName);
    
    //根据登录名查询手机/邮箱
    String phoneForNickName(String nickName);
    

    int insertSelective(User record);

    User selectByPrimaryKey(Integer uid);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    
    
    
}