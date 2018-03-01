package com.team06.service.impl;

import com.team06.domain.BaseResult;
import com.team06.domain.Process;
import com.team06.mapper.ProMapper;
import com.team06.page.PageBean;
import com.team06.service.ProService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by dllo on 18/2/28.
 */
@Service("proService")
public class ProServiceImpl implements ProService{

    @Resource
    private ProMapper proMapper;

    public BaseResult<Process> selectAllPro(Process process, int startIndex, int pageSize) {

        int total = proMapper.getTotal(process);
        PageBean<Process> pageBean = new PageBean<Process>(startIndex,pageSize,total);
        process.setPageBean(pageBean);
        List<Process> processes = proMapper.selectAllPro(process);
        BaseResult<Process> baseResult = new BaseResult<Process>(total,processes);
        return baseResult;
    }
}
