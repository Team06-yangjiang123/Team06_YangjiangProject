package com.team06.mapper;

import com.team06.domain.Process;

import java.util.List;

/**
 * Created by dllo on 18/2/28.
 */
public interface ProMapper {

    int getTotal(Process process);
    List<Process> selectAllPro(Process process);
}
