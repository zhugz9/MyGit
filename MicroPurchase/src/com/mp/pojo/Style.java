package com.mp.pojo;

public class Style {
    private Integer sid;

    private String sname;

    private String stylePicture;

    private Integer gid;

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

    public String getStylePicture() {
        return stylePicture;
    }

    public void setStylePicture(String stylePicture) {
        this.stylePicture = stylePicture == null ? null : stylePicture.trim();
    }

    public Integer getGid() {
        return gid;
    }

    public void setGid(Integer gid) {
        this.gid = gid;
    }
}