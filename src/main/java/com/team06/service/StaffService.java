package com.team06.service;

import com.team06.domain.Staff;

import java.util.List;
import java.util.Set;

/**
 * Created by dllo on 2018/2/28.
 */
public interface StaffService {

    List<Staff> selectPerson();


    Staff selectByStaffName(String staffUsername);

    Staff selectByStaffPwd(String staffPwd);

    Set<String> getRoles(String staffUsername);

    Set<String> getPermissions(String staffUsername);
//    BaseResult<Staff> selectPerson(int startIndex, int pageSize, Staff staff);
}
