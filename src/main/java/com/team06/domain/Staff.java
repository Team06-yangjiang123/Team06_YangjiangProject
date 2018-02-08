package com.team06.domain;

/**
 * Created by dllo on 18/2/8.
 */
public class Staff {

    private int staffId;
    private String staffEmail;
    private String username;
    private String staffPwd;
    public Staff() {
    }

    public Staff(String staffEmail, String username, String staffPwd) {
        this.staffEmail = staffEmail;
        this.username = username;
        this.staffPwd = staffPwd;
    }

    public int getStaffId() {
        return staffId;
    }

    public void setStaffId(int staffId) {
        this.staffId = staffId;
    }

    public String getStaffEmail() {
        return staffEmail;
    }

    public void setStaffEmail(String staffEmail) {
        this.staffEmail = staffEmail;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getStaffPwd() {
        return staffPwd;
    }

    public void setStaffPwd(String staffPwd) {
        this.staffPwd = staffPwd;
    }

    @Override
    public String toString() {
        return "Staff{" +
                "staffId=" + staffId +
                ", staffEmail='" + staffEmail + '\'' +
                ", username='" + username + '\'' +
                ", staffPwd='" + staffPwd + '\'' +
                '}';
    }
}
