package com.mp.pojo;

public class Wheel {
    private Integer wid;

    private String image_address;

    private String connection_address;

    private Integer state;

    public Integer getWid() {
        return wid;
    }

    public void setWid(Integer wid) {
        this.wid = wid;
    }

    public String getImage_address() {
		return image_address;
	}

	public void setImage_address(String image_address) {
		this.image_address = image_address;
	}

	public String getConnection_address() {
		return connection_address;
	}

	public void setConnection_address(String connection_address) {
		this.connection_address = connection_address;
	}

	public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }
}