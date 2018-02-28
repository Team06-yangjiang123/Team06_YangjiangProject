package com.team06.domain;

import com.team06.page.PageBean;

/**
 * Created by dllo on 18/2/27.
 */
public class Department {
    private int depId;
    private String depName;
    private PageBean<Department> pageBean;

    public Department() {
    }

    public Department(String depName) {
        this.depName = depName;
    }

    public PageBean<Department> getPageBean() {
        return pageBean;
    }

    public void setPageBean(PageBean<Department> pageBean) {
        this.pageBean = pageBean;
    }

    public int getDepId() {
        return depId;
    }

    public void setDepId(int depId) {
        this.depId = depId;
    }

    public String getDepName() {
        return depName;
    }

    public void setDepName(String depName) {
        this.depName = depName;
    }

    @Override
    public String toString() {
        return "Department{" +
                "depId=" + depId +
                ", depName='" + depName + '\'' +
                '}';
    }


}
