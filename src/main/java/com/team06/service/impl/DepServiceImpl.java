package com.team06.service.impl;

import com.team06.domain.BaseResult;
import com.team06.domain.Department;
import com.team06.mapper.DepMapper;
import com.team06.page.PageBean;
import com.team06.service.DepService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by dllo on 18/2/28.
 */
@Service("depService")
public class DepServiceImpl implements DepService {

    @Resource
    private DepMapper depMapper;

    public BaseResult<Department> selectDep(int startIndex,int pageSize,Department department) {

        int total = depMapper.getTotalRecord(department);
        PageBean<Department> pageBean = new PageBean<Department>(startIndex,pageSize,total);
        department.setPageBean(pageBean);
        List<Department> departments = depMapper.selectDep(department);
        BaseResult<Department> baseResult = new BaseResult<Department>(total,departments);
        return baseResult;
    }
}
