package com.team06.service;

import com.team06.domain.Staff;

import java.util.List;

/**
 * Created by dllo on 2018/2/28.
 */
public interface StaffService {

    List<Staff> selectPerson();

//    BaseResult<Staff> selectPerson(int startIndex, int pageSize, Staff staff);
}
