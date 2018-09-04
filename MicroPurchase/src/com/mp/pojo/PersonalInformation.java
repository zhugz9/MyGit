package com.mp.pojo;

import java.io.Serializable;

public class PersonalInformation implements Serializable {
    private Integer pid;

    private String messageTitle;

    private String messageContents;

    private Integer whetherToRead;
    
    private String date;

    public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getMessageTitle() {
        return messageTitle;
    }

    public void setMessageTitle(String messageTitle) {
        this.messageTitle = messageTitle == null ? null : messageTitle.trim();
    }

    public String getMessageContents() {
        return messageContents;
    }

    public void setMessageContents(String messageContents) {
        this.messageContents = messageContents == null ? null : messageContents.trim();
    }

    public Integer getWhetherToRead() {
        return whetherToRead;
    }

    public void setWhetherToRead(Integer whetherToRead) {
        this.whetherToRead = whetherToRead;
    }
}