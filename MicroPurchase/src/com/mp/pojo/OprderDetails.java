package com.mp.pojo;

import java.util.Date;

public class OprderDetails {
    private Integer did;
    
    private String image_path;
   
    private Integer tid;
    
	public Integer getTid() {
		return tid;
	}

	public void setTid(Integer tid) {
		this.tid = tid;
	}

	@Override
	public String toString() {
		return "OprderDetails [did=" + did + ", image_path=" + image_path
				+ ", tid=" + tid + ", gid=" + gid + ", oid=" + oid
				+ ", number_of_commodities=" + number_of_commodities
				+ ", unit_price_of_goods=" + unit_price_of_goods
				+ ", total_amount=" + total_amount + ", order_date="
				+ order_date + ", dateOfArrival=" + dateOfArrival + ", gname="
				+ gname + ", ordernumber=" + ordernumber + "]";
	}

	public String getImage_path() {
		return image_path;
	}

	public void setImage_path(String image_path) {
		this.image_path = image_path;
	}

	private Integer gid;
    
	public Integer getGid() {
		return gid;
	}

	public void setGid(Integer gid) {
		this.gid = gid;
	}

	private Integer oid;

    private Integer number_of_commodities;

    private Double unit_price_of_goods;

    private Double total_amount;

    private String order_date;
    
	private Date dateOfArrival;
    
    private String gname;
    
    private String ordernumber;

    public String getGname() {
		return gname;
	}

	public void setGname(String gname) {
		this.gname = gname;
	}

	public Integer getDid() {
        return did;
    }

    public void setDid(Integer did) {
        this.did = did;
    }

    public Integer getOid() {
        return oid;
    }

    public void setOid(Integer oid) {
        this.oid = oid;
    }

    public Integer getNumber_of_commodities() {
		return number_of_commodities;
	}

	public void setNumber_of_commodities(Integer number_of_commodities) {
		this.number_of_commodities = number_of_commodities;
	}

	public Double getUnit_price_of_goods() {
		return unit_price_of_goods;
	}

	public void setUnit_price_of_goods(Double unit_price_of_goods) {
		this.unit_price_of_goods = unit_price_of_goods;
	}

	public Double getTotal_amount() {
		return total_amount;
	}

	public void setTotal_amount(Double total_amount) {
		this.total_amount = total_amount;
	}

	public String getOrder_date() {
		return order_date;
	}

	public void setOrder_date(String order_date) {
		this.order_date = order_date;
	}

	public String getOrdernumber() {
		return ordernumber;
	}

	public void setOrdernumber(String ordernumber) {
		this.ordernumber = ordernumber;
	}

	public Date getDateOfArrival() {
        return dateOfArrival;
    }

    public void setDateOfArrival(Date dateOfArrival) {
        this.dateOfArrival = dateOfArrival;
    }
}