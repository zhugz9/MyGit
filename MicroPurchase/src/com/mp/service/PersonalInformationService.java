package com.mp.service;

import java.util.List;

import com.mp.pojo.PersonalInformation;

public interface PersonalInformationService {
	
	/**
	 * 批量删除
	 * @param params
	 * @return
	 */
	public int deleteInfoMation(Integer[] params);
	
	/**
	 * 分页查询
	 * @param pageIndex
	 * @return
	 */
	public List<PersonalInformation> getInfoList(Integer pageIndex);
	
	
	/**
	 * 获取信息数量
	 * @return
	 */
	public int getInfoSize();
	
	//获取页码数量
	public int getPageSize();
	
	//获取信息详情
	public PersonalInformation getMessageInfoById(int id);
}
