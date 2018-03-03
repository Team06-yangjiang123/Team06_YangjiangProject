package com.team06.service;

import com.team06.domain.BaseResult;
import com.team06.domain.ProcessDone;

/**
 * Created by dllo on 18/3/1.
 */
public interface ProDoneService {

    BaseResult<ProcessDone> selectAllProd(ProcessDone processDone,
                                          int startIndex,
                                          int pageSize);
}
