package com.team06.mapper;

import com.team06.domain.Staff;

import java.util.List;
import java.util.Set;

/**
 * Created by dllo on 2018/2/28.
 */
/*staff操作的对外接口声明*/
public interface StaffMapper {
    List<Staff> selectPerson();


    Staff selectByStaffName(String staffUsername);

    Staff selectByStaffPwd(String staffPwd);

    Set<String> getRoles(String staffUsername);

    Set<String> getPermissions(String staffUsername);
//    int getTotalRecord(Staff staff);
//
//    List<Staff> selectPerson(Staff staff);

}
