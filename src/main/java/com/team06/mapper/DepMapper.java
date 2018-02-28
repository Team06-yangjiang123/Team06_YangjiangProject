package com.team06.mapper;

import com.team06.domain.Department;

import java.util.List;

/**
 * Created by dllo on 18/2/27.
 */
public interface DepMapper {


    int getTotalRecord(Department department);

    List<Department> selectDep(Department department);
}
