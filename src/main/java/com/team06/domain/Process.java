package com.team06.domain;

import com.team06.page.PageBean;

import java.util.Date;

/**
 * Created by dllo on 18/2/28.
 */
public class Process {

    private int proId;
    private String proName,department,step,applicant;
    private String applyTime;
    private String print;
    private PageBean<Process> pageBean;

    public Process(String proName, String department, String step, String applicant, String applyTime) {
        this.proName = proName;
        this.department = department;
        this.step = step;
        this.applicant = applicant;
        this.applyTime = applyTime;
    }

    public Process() {
    }

    public String getPrint() {
        return print;
    }

    public void setPrint(String print) {
        this.print = print;
    }

    public PageBean<Process> getPageBean() {
        return pageBean;
    }

    public void setPageBean(PageBean<Process> pageBean) {
        this.pageBean = pageBean;
    }

    public int getProId() {
        return proId;
    }

    public void setProId(int proId) {
        this.proId = proId;
    }

    public String getProName() {
        return proName;
    }

    public void setProName(String proName) {
        this.proName = proName;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getStep() {
        return step;
    }

    public void setStep(String step) {
        this.step = step;
    }

    public String getApplicant() {
        return applicant;
    }

    public void setApplicant(String applicant) {
        this.applicant = applicant;
    }

    public String getApplyTime() {
        return applyTime;
    }

    public void setApplyTime(String applyTime) {
        this.applyTime = applyTime;
    }

    @Override
    public String toString() {
        return "Process{" +
                "proId=" + proId +
                ", proName='" + proName + '\'' +
                ", department='" + department + '\'' +
                ", step='" + step + '\'' +
                ", applicant='" + applicant + '\'' +
                ", applyTime=" + applyTime +
                ", pageBean=" + pageBean +
                '}';
    }

}
