package com.team06.domain;

import com.team06.page.PageBean;

import java.io.Serializable;

/**
 * Created by dllo on 18/3/3.
 */
public class SatelliteManager implements Serializable{

    private String satelliteName;
    private String manager,createDate,isEnabled;
    private PageBean<SatelliteManager> pageBean;

    public SatelliteManager(String satelliteName, String manager, String createDate, String isEnabled, PageBean<SatelliteManager> pageBean) {
        this.satelliteName = satelliteName;
        this.manager = manager;
        this.createDate = createDate;
        this.isEnabled = isEnabled;
        this.pageBean = pageBean;
    }

    public SatelliteManager() {
    }

    public String getSatelliteName() {
        return satelliteName;
    }

    public void setSatelliteName(String satelliteName) {
        this.satelliteName = satelliteName;
    }

    public String getManager() {
        return manager;
    }

    public void setManager(String manager) {
        this.manager = manager;
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    public String getIsEnabled() {
        return isEnabled;
    }

    public void setIsEnabled(String isEnabled) {
        this.isEnabled = isEnabled;
    }

    public PageBean<SatelliteManager> getPageBean() {
        return pageBean;
    }

    public void setPageBean(PageBean<SatelliteManager> pageBean) {
        this.pageBean = pageBean;
    }

    @Override
    public String toString() {
        return "SatelliteManager{" +
                "satelliteName='" + satelliteName + '\'' +
                ", manager='" + manager + '\'' +
                ", createDate='" + createDate + '\'' +
                ", isEnabled='" + isEnabled + '\'' +
                ", pageBean=" + pageBean +
                '}';
    }
}
