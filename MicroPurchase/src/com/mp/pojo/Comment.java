package com.mp.pojo;

public class Comment {
    private Integer cid;

    private Integer gid;

    private Integer uid;

    private String commodityEvaluation;

    private Integer descriptionMatches;

    private Integer sellersServices;

    private Integer logisticsServices;

    private String serviceEvaluation;

    private byte[] soakingPictures;

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
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

    public String getCommodityEvaluation() {
        return commodityEvaluation;
    }

    public void setCommodityEvaluation(String commodityEvaluation) {
        this.commodityEvaluation = commodityEvaluation == null ? null : commodityEvaluation.trim();
    }

    public Integer getDescriptionMatches() {
        return descriptionMatches;
    }

    public void setDescriptionMatches(Integer descriptionMatches) {
        this.descriptionMatches = descriptionMatches;
    }

    public Integer getSellersServices() {
        return sellersServices;
    }

    public void setSellersServices(Integer sellersServices) {
        this.sellersServices = sellersServices;
    }

    public Integer getLogisticsServices() {
        return logisticsServices;
    }

    public void setLogisticsServices(Integer logisticsServices) {
        this.logisticsServices = logisticsServices;
    }

    public String getServiceEvaluation() {
        return serviceEvaluation;
    }

    public void setServiceEvaluation(String serviceEvaluation) {
        this.serviceEvaluation = serviceEvaluation == null ? null : serviceEvaluation.trim();
    }

    public byte[] getSoakingPictures() {
        return soakingPictures;
    }

    public void setSoakingPictures(byte[] soakingPictures) {
        this.soakingPictures = soakingPictures;
    }
}