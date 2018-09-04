package com.mp.pojo;

import java.util.List;

public class City {
    private Integer cid;

    private String cname;
    
    private List<City> cityList;

    private Integer parentId;

    public Integer getCid() {
        return cid;
    }

	public void setCid(Integer cid) {
        this.cid = cid;
    }

	

	public List<City> getCityList() {
		return cityList;
	}

	public void setCityList(List<City> cityList) {
		this.cityList = cityList;
	}

	public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname == null ? null : cname.trim();
    }

    public Integer getParentId() {
        return parentId;
    }

    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }
}