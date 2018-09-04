package com.mp.dao;

import com.mp.pojo.TypeOfComment;

public interface typeOfCommentMapper {
    int deleteByPrimaryKey(Integer tid);

    int insert(TypeOfComment record);

    int insertSelective(TypeOfComment record);

    TypeOfComment selectByPrimaryKey(Integer tid);

    int updateByPrimaryKeySelective(TypeOfComment record);

    int updateByPrimaryKey(TypeOfComment record);
}