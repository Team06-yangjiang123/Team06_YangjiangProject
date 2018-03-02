package com.team06.domain;

import com.team06.page.PageBean;

/**
 * Created by dllo on 2018/2/28.
 */
public class Staff {

    private int staff_id;
    private String staff_email,staff_username;

    private PageBean<Staff> pageBean;

    public PageBean<Staff> getPageBean() {
        return pageBean;
    }

    public void setPageBean(PageBean<Staff> pageBean) {
        this.pageBean = pageBean;
    }

    public Staff() {
    }

    public Staff(String staff_email, String staff_username) {
        this.staff_email = staff_email;
        this.staff_username = staff_username;
    }

    @Override
    public String toString() {
        return "Staff{" +
                "staff_id=" + staff_id +
                ", staff_email='" + staff_email + '\'' +
                ", staff_username='" + staff_username + '\'' +
                '}';
    }

    public int getStaff_id() {
        return staff_id;
    }

    public void setStaff_id(int staff_id) {
        this.staff_id = staff_id;
    }

    public String getStaff_email() {
        return staff_email;
    }

    public void setStaff_email(String staff_email) {
        this.staff_email = staff_email;
    }

    public String getStaff_username() {
        return staff_username;
    }

    public void setStaff_username(String staff_username) {
        this.staff_username = staff_username;
    }
}

