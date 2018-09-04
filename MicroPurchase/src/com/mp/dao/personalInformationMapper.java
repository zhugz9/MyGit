package com.mp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.mp.pojo.PersonalInformation;

@Repository("personalInformationMapper")
public interface personalInformationMapper {
    int deleteByPrimaryKey(Integer pid);

    int insert(PersonalInformation record);

    int insertSelective(PersonalInformation record);

    PersonalInformation selectByPrimaryKey(Integer pid);

    int updateByPrimaryKeySelective(PersonalInformation record);

    int updateByPrimaryKey(PersonalInformation record);
    
    int deleteInfomation(Integer [] params);
    
    int selectInfoSize();
    
    List<PersonalInformation> selectInfo(@Param("beginIndex")int beginIndex,@Param("infoSize")int infoSize);
}