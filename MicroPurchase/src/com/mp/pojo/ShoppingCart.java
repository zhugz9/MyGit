package com.mp.pojo;

public class ShoppingCart {
    private Integer sid;

    private Integer gid;

    private Integer uid;

    private Integer number_of_commodities;
    
    private String gname;		
    
    private double original_cost;
    
    private Double concessional_rate;
    
    private String image_path;
    
    @Override
	public String toString() {
		return "ShoppingCart [sid=" + sid + ", gid=" + gid + ", uid=" + uid
				+ ", number_of_commodities=" + number_of_commodities
				+ ", gname=" + gname + ", original_cost=" + original_cost
				+ ", concessional_rate=" + concessional_rate + ", image_path="
				+ image_path + ", tid=" + tid + ", commodity_code="
				+ commodity_code + "]";
	}

	private Integer tid;
    
    private String commodity_code;

    public Integer getTid() {
		return tid;
	}

	public void setTid(Integer tid) {
		this.tid = tid;
	}

	public String getCommodity_code() {
		return commodity_code;
	}

	public void setCommodity_code(String commodity_code) {
		this.commodity_code = commodity_code;
	}

	public String getImage_path() {
		return image_path;
	}

	public void setImage_path(String image_path) {
		this.image_path = image_path;
	}

	public String getGname() {
		return gname;
	}

	public void setGname(String gname) {
		this.gname = gname;
	}

	public double getOriginal_cost() {
		return original_cost;
	}

	public void setOriginal_cost(double original_cost) {
		this.original_cost = original_cost;
	}

	public Double getConcessional_rate() {
		return concessional_rate;
	}

	public void setConcessional_rate(Double concessional_rate) {
		this.concessional_rate = concessional_rate;
	}

	public Integer getNumber_of_commodities() {
		return number_of_commodities;
	}

	public void setNumber_of_commodities(Integer number_of_commodities) {
		this.number_of_commodities = number_of_commodities;
	}

	public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }


	public Integer getGid() {
        return gid;
    }

    public void setGid(Integer gid) {
        this.gid = gid;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

}