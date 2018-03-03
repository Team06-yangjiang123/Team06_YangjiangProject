package com.team06.domain;

import com.team06.page.PageBean;

/**
 * Created by dllo on 18/3/1.
 */
public class ProcessDone {

    private int prodId;
    private String prodName;
    private String applyDept,stepDone,applyPerson,appTime;
    private PageBean<ProcessDone> pageBean;


    public ProcessDone(String prodName, String applyDept, String stepDone, String applyPerson, String appTime) {
        this.prodName = prodName;
        this.applyDept = applyDept;
        this.stepDone = stepDone;
        this.applyPerson = applyPerson;
        this.appTime = appTime;
    }

    public ProcessDone() {
    }

    public int getProdId() {
        return prodId;
    }

    public void setProdId(int prodId) {
        this.prodId = prodId;
    }

    public String getProdName() {
        return prodName;
    }

    public void setProdName(String prodName) {
        this.prodName = prodName;
    }

    public String getApplyDept() {
        return applyDept;
    }

    public void setApplyDept(String applyDept) {
        this.applyDept = applyDept;
    }

    public String getStepDone() {
        return stepDone;
    }

    public void setStepDone(String stepDone) {
        this.stepDone = stepDone;
    }

    public String getApplyPerson() {
        return applyPerson;
    }

    public void setApplyPerson(String applyPerson) {
        this.applyPerson = applyPerson;
    }

    public String getAppTime() {
        return appTime;
    }

    public void setAppTime(String appTime) {
        this.appTime = appTime;
    }

    public PageBean<ProcessDone> getPageBean() {
        return pageBean;
    }

    public void setPageBean(PageBean<ProcessDone> pageBean) {
        this.pageBean = pageBean;
    }

    @Override
    public String toString() {
        return "processDone{" +
                "prodId=" + prodId +
                ", prodName='" + prodName + '\'' +
                ", applyDept='" + applyDept + '\'' +
                ", stepDone='" + stepDone + '\'' +
                ", applyPerson='" + applyPerson + '\'' +
                ", appTime='" + appTime + '\'' +
                '}';
    }
}
