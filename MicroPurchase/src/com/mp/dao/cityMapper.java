package com.mp.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.mp.pojo.City;

@Repository("cityMapper")
public interface cityMapper {
    List<City> selectByPrimaryKey();
}