package com.team06.domain;

import com.team06.page.PageBean;

import java.io.Serializable;

/**
 * Created by dllo on 2018/2/28.
 */
public class Staff implements Serializable{

    private int staffId;
    private String staffUsername;
    private String staffPwd;
    private int staffDepId;
    private int roleId;
    private String staffEmail;

    private PageBean<Staff> pageBean;

    public PageBean<Staff> getPageBean() {
        return pageBean;
    }

    public void setPageBean(PageBean<Staff> pageBean) {
        this.pageBean = pageBean;
    }

    public Staff() {
    }

    public Staff(String staffUsername, String staffPwd, int staffDepId, int roleId, String staffEmail, PageBean<Staff> pageBean) {
        this.staffUsername = staffUsername;
        this.staffPwd = staffPwd;
        this.staffDepId = staffDepId;
        this.roleId = roleId;
        this.staffEmail = staffEmail;
        this.pageBean = pageBean;
    }

    public int getStaffId() {
        return staffId;
    }

    public void setStaffId(int staffId) {
        this.staffId = staffId;
    }

    public String getStaffUsername() {
        return staffUsername;
    }

    public void setStaffUsername(String staffUsername) {
        this.staffUsername = staffUsername;
    }

    public String getStaffPwd() {
        return staffPwd;
    }

    public void setStaffPwd(String staffPwd) {
        this.staffPwd = staffPwd;
    }

    public int getStaffDepId() {
        return staffDepId;
    }

    public void setStaffDepId(int staffDepId) {
        this.staffDepId = staffDepId;
    }

    public int getRoleId() {
        return roleId;
    }

    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }

    public String getStaffEmail() {
        return staffEmail;
    }

    public void setStaffEmail(String staffEmail) {
        this.staffEmail = staffEmail;
    }

    @Override
    public String toString() {
        return "Staff{" +
                "staffId=" + staffId +
                ", staffUsername='" + staffUsername + '\'' +
                ", staffPwd='" + staffPwd + '\'' +
                ", staffDepId=" + staffDepId +
                ", roleId=" + roleId +
                ", staffEmail='" + staffEmail + '\'' +
                ", pageBean=" + pageBean +
                '}';
    }
}

