package com.mp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mp.dao.personalInformationMapper;
import com.mp.pojo.PersonalInformation;
import com.mp.service.PersonalInformationService;
import com.mp.util.PageInfo;

@Service("personalInformationServiceImpl")
public class PersonalInformationServiceImpl implements PersonalInformationService {

	@Autowired
	private personalInformationMapper pm;
	@Override
	public int deleteInfoMation(Integer[] params) {
		return pm.deleteInfomation(params);
	}

	@Override
	public List<PersonalInformation> getInfoList(Integer pageIndex) {
		int totalPage=getPageSize();
			if(pageIndex<1||pageIndex>totalPage){
				pageIndex=1;
			}
			pageIndex=(pageIndex-1)*PageInfo.pageInfoSize;
		return pm.selectInfo(pageIndex, PageInfo.pageInfoSize);
	}

	@Override
	public int getInfoSize() {
		return pm.selectInfoSize();
	}

	@Override
	public int getPageSize() {
		return getInfoSize()%PageInfo.pageInfoSize==0?getInfoSize()/PageInfo.pageInfoSize:getInfoSize()/PageInfo.pageInfoSize+1;
	}

	@Override
	public PersonalInformation getMessageInfoById(int id) {
		// TODO Auto-generated method stub
		return pm.selectByPrimaryKey(id);
	}
	
	

}
