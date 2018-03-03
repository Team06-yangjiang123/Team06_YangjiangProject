package com.team06.service.impl;

import com.team06.domain.BaseResult;
import com.team06.domain.ProcessDone;
import com.team06.mapper.ProcessDoneMapper;
import com.team06.page.PageBean;
import com.team06.service.ProDoneService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by dllo on 18/3/1.
 */
@Service("proDoneService")
public class ProDoneServiceImpl implements ProDoneService {

    @Resource
    private ProcessDoneMapper doneMapper;
    public BaseResult<ProcessDone> selectAllProd(ProcessDone processDone, int startIndex, int pageSize) {
        int total =doneMapper.getTotalRecord(processDone);
        PageBean<ProcessDone> pageBean = new PageBean<ProcessDone>(startIndex,pageSize,total);
        processDone.setPageBean(pageBean);
        List<ProcessDone> processDones = doneMapper.selectProcessDone(processDone);
        BaseResult<ProcessDone> baseResult = new BaseResult<ProcessDone>(total,processDones);
        return baseResult;
    }
}
