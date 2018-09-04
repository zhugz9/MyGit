package com.mp.pojo;

public class Store {
    private Integer sid;

    private String sname;

    private Double sdescribe;

    private Double serviceAttitude;

    private Double logisticsSpeed;

    private Double credibility;

    private String phone;

    private String shop_address;

    private String activity;

    private Integer state;

    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname == null ? null : sname.trim();
    }

    public Double getSdescribe() {
        return sdescribe;
    }

    public void setSdescribe(Double sdescribe) {
        this.sdescribe = sdescribe;
    }

 

    public Double getServiceAttitude() {
		return serviceAttitude;
	}

	public void setServiceAttitude(Double serviceAttitude) {
		this.serviceAttitude = serviceAttitude;
	}

	public String getShop_address() {
		return shop_address;
	}

	public void setShop_address(String shop_address) {
		this.shop_address = shop_address;
	}

	public Double getLogisticsSpeed() {
        return logisticsSpeed;
    }

    public void setLogisticsSpeed(Double logisticsSpeed) {
        this.logisticsSpeed = logisticsSpeed;
    }

    public Double getCredibility() {
        return credibility;
    }

    public void setCredibility(Double credibility) {
        this.credibility = credibility;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getActivity() {
        return activity;
    }

    public void setActivity(String activity) {
        this.activity = activity == null ? null : activity.trim();
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }
}