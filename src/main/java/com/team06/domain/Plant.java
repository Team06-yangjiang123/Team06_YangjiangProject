package com.team06.domain;

import com.team06.page.PageBean;

/**
 * Created by dllo on 18/3/3.
 */
public class Plant {

    private int plantId;
    private String plantName,plantManager;
    private String plantAddress;
    private String plantDate;
    private int crewId;
    private PageBean<Plant> pageBean;

    public Plant(String plantName, String plantManager, String plantAddress, String plantDate, int crewId, PageBean<Plant> pageBean) {
        this.plantName = plantName;
        this.plantManager = plantManager;
        this.plantAddress = plantAddress;
        this.plantDate = plantDate;
        this.crewId = crewId;
        this.pageBean = pageBean;
    }

    public Plant() {
    }

    public int getPlantId() {
        return plantId;
    }

    public void setPlantId(int plantId) {
        this.plantId = plantId;
    }

    public String getPlantName() {
        return plantName;
    }

    public void setPlantName(String plantName) {
        this.plantName = plantName;
    }

    public String getPlantManager() {
        return plantManager;
    }

    public void setPlantManager(String plantManager) {
        this.plantManager = plantManager;
    }

    public String getPlantAddress() {
        return plantAddress;
    }

    public void setPlantAddress(String plantAddress) {
        this.plantAddress = plantAddress;
    }

    public String getPlantDate() {
        return plantDate;
    }

    public void setPlantDate(String plantDate) {
        this.plantDate = plantDate;
    }

    public int getCrewId() {
        return crewId;
    }

    public void setCrewId(int crewId) {
        this.crewId = crewId;
    }

    public PageBean<Plant> getPageBean() {
        return pageBean;
    }

    public void setPageBean(PageBean<Plant> pageBean) {
        this.pageBean = pageBean;
    }

    @Override
    public String toString() {
        return "Plant{" +
                "plantId=" + plantId +
                ", plantName='" + plantName + '\'' +
                ", plantManager='" + plantManager + '\'' +
                ", plantAddress='" + plantAddress + '\'' +
                ", plantDate='" + plantDate + '\'' +
                ", crewId=" + crewId +
                ", pageBean=" + pageBean +
                '}';
    }
}
