package com.mp.pojo;

public class ReceiptAddress {
    private Integer rid;

    private Integer uid;

    private String areaOfResidence;

    private String completeAddress;

    private Integer zipCode;

    private String nameOfConsignee;

    private String contactNumber;

    public Integer getRid() {
        return rid;
    }

    public void setRid(Integer rid) {
        this.rid = rid;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getAreaOfResidence() {
        return areaOfResidence;
    }

    public void setAreaOfResidence(String areaOfResidence) {
        this.areaOfResidence = areaOfResidence == null ? null : areaOfResidence.trim();
    }

    public String getCompleteAddress() {
        return completeAddress;
    }

    public void setCompleteAddress(String completeAddress) {
        this.completeAddress = completeAddress == null ? null : completeAddress.trim();
    }

    public Integer getZipCode() {
        return zipCode;
    }

    public void setZipCode(Integer zipCode) {
        this.zipCode = zipCode;
    }

    public String getNameOfConsignee() {
        return nameOfConsignee;
    }

    public void setNameOfConsignee(String nameOfConsignee) {
        this.nameOfConsignee = nameOfConsignee == null ? null : nameOfConsignee.trim();
    }

    public String getContactNumber() {
        return contactNumber;
    }

    public void setContactNumber(String contactNumber) {
        this.contactNumber = contactNumber == null ? null : contactNumber.trim();
    }
}