package com.mp.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mp.dao.LousMapper;
import com.mp.dao.typeOfCommodityMapper;
import com.mp.pojo.Lous;
import com.mp.pojo.TypeOfCommodity;
import com.mp.service.LousService;

@Service("lousService")
public class LousServiceImpl implements LousService {
	
	@Autowired
	private LousMapper lousmapper;
	
	@Autowired
	private typeOfCommodityMapper commodityMapper;
	
	@Override
	public List<Lous> queryLousList() {
		// TODO Auto-generated method stub
		List<Lous> louslist = new ArrayList<Lous>();		
		List<TypeOfCommodity> commodities = commodityMapper.queryTypeOfCommodityTwoAll();
		
		for (TypeOfCommodity typeOfCommodity : commodities) {
			List<Lous> loulist = lousmapper.queryLousList(typeOfCommodity.getTid());
			for (Lous lous : loulist) {
				Lous lou = new Lous();
				lou.setTid(lous.getTid());
				lou.setCid(lous.getCid());
				lou.setGid(lous.getCid());
				lou.setGname(lous.getGname());
				lou.setImage_path(lous.getImage_path());
				lou.setPhone(lous.getPhone());
				lou.setPid(lous.getPid());
				lou.setShop_address(lous.getShop_address());
				lou.setSid(lous.getSid());
				lou.setSname(lous.getSname());
				louslist.add(lou);
			}
		}
		
		return louslist;
	}

	@Override
	public List<Lous> queryLousListById(Integer tid) {
		// TODO Auto-generated method stub
		return lousmapper.queryLousList(tid);
	}

	@Override
	public List<Lous> queryLousListByid(Integer tid, Integer gid) {
		//System.out.println("tid:"+tid+"---gid:"+gid);
		// TODO Auto-generated method stub
		return lousmapper.queryLousListByid(tid, gid);
	}
}