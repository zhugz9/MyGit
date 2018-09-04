package com.mp.pojo;

import java.util.List;

public class TypeOfCommodity {
    private Integer tid;

    private String tname;

    private Integer parentId;
    
    private List<TypeOfCommodity> commodities;
    
    public List<TypeOfCommodity> getCommodities() {
		return commodities;
	}

	public void setCommodities(List<TypeOfCommodity> commodities) {
		this.commodities = commodities;
	}

	public Integer getTid() {
        return tid;
    }

    public void setTid(Integer tid) {
        this.tid = tid;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname == null ? null : tname.trim();
    }

    public Integer getParentId() {
        return parentId;
    }

    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }
}