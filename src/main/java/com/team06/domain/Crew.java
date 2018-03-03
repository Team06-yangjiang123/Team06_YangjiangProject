package com.team06.domain;

import com.team06.page.PageBean;

/**
 * Created by dllo on 18/3/3.
 */
public class Crew {

    private int crewId;
    private String crewName,crewManager,createDate;
    private PageBean<Crew> pageBean;

    public Crew(int crewId, String crewName, String crewManager, String createDate) {
        this.crewId = crewId;
        this.crewName = crewName;
        this.crewManager = crewManager;
        this.createDate = createDate;
    }

    public Crew() {
    }

    public int getCrewId() {
        return crewId;
    }

    public void setCrewId(int crewId) {
        this.crewId = crewId;
    }

    public String getCrewName() {
        return crewName;
    }

    public void setCrewName(String crewName) {
        this.crewName = crewName;
    }

    public String getCrewManager() {
        return crewManager;
    }

    public void setCrewManager(String crewManager) {
        this.crewManager = crewManager;
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    public PageBean<Crew> getPageBean() {
        return pageBean;
    }

    public void setPageBean(PageBean<Crew> pageBean) {
        this.pageBean = pageBean;
    }

    @Override
    public String toString() {
        return "Crew{" +
                "crewId=" + crewId +
                ", crewName='" + crewName + '\'' +
                ", crewManager='" + crewManager + '\'' +
                ", createDate='" + createDate + '\'' +
                ", pageBean=" + pageBean +
                '}';
    }
}
