package com.team06.domain;

import com.team06.page.PageBean;

import javax.management.relation.Role;
import java.util.ArrayList;

/**
 * Created by dllo on 18/3/1.
 */
public class role {

    private int roleId;
    private String roleName;
    private PageBean<Role> pageBean;


    public PageBean<Role> getPageBean() {
        return pageBean;
    }

    public void setPageBean(PageBean<Role> pageBean) {
        this.pageBean = pageBean;
    }

    public role() {
    }

    public role(String roleName) {
        this.roleName = roleName;
    }

    public int getRoleId() {
        return roleId;
    }

    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    @Override
    public String toString() {
        return "role{" +
                "roleId=" + roleId +
                ", roleName='" + roleName + '\'' +
                '}';
    }
}
