package com.team06.mapper;

import com.team06.domain.ProcessDone;

import java.util.List;

/**
 * Created by dllo on 18/3/1.
 */
public interface ProcessDoneMapper {

    int getTotalRecord(ProcessDone processDone);
    List<ProcessDone> selectProcessDone(ProcessDone processDone);


}
