package com.team06.service;

import com.team06.domain.BaseResult;
import com.team06.domain.Department;

/**
 * Created by dllo on 18/2/28.
 */
public interface DepService {

    BaseResult<Department> selectDep(int startIndex,int pageSize,Department department);
}
