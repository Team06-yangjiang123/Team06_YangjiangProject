package com.team06.service.impl;

import com.team06.domain.BaseResult;
import com.team06.domain.Crew;
import com.team06.mapper.CrewMapper;
import com.team06.page.PageBean;
import com.team06.service.CrewService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by dllo on 18/3/3.
 */
@Service("crewService")
public class CrewServiceImpl implements CrewService {

    @Resource
    private CrewMapper crewMapper;
    public BaseResult<Crew> selectAllCrew(Crew crew, int startIndex, int pageSize) {

        int total = crewMapper.getCrewTotal(crew);
        PageBean<Crew> pageBean = new PageBean<Crew>(startIndex,pageSize,total);
        crew.setPageBean(pageBean);
        List<Crew> list = crewMapper.selectAllCrew(crew);
        BaseResult<Crew> baseResult = new BaseResult<Crew>(total,list);
        return baseResult;
    }
}
