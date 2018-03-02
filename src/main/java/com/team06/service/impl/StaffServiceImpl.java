package com.team06.service.impl;

import com.team06.domain.Staff;
import com.team06.mapper.StaffMapper;
import com.team06.service.StaffService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by dllo on 2018/2/28.
 */
@Service("staffService")
public class StaffServiceImpl implements StaffService {

    @Resource
    private StaffMapper staffMapper;

//    public BaseResult<Staff> selectPerson(int startIndex,int pageSize,Staff staff) {
//
//        int total = staffMapper.getTotalRecord(staff);
//        PageBean<Staff> pageBean = new PageBean<Staff>(startIndex,pageSize,total);
//        staff.setPageBean(pageBean);
//        List<Staff> staffs = staffMapper.selectPerson(staff);
//        BaseResult<Staff> baseResult = new BaseResult<Staff>(total,staffs);
//        return baseResult;
//    }

    public List<Staff> selectPerson() {
        return staffMapper.selectPerson();
    }
}
