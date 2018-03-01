package com.team06.service;

import com.team06.domain.BaseResult;
import com.team06.domain.Process;

/**
 * Created by dllo on 18/2/28.
 */
public interface ProService {

    BaseResult<Process> selectAllPro(Process process,int startIndex,int pageSize);
}
