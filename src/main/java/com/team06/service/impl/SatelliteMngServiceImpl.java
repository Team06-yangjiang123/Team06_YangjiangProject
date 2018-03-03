package com.team06.service.impl;

import com.team06.domain.BaseResult;
import com.team06.domain.SatelliteManager;
import com.team06.mapper.SatelliteManagerMapper;
import com.team06.page.PageBean;
import com.team06.service.SatelliteMngService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by dllo on 18/3/3.
 */
@Service("satelliteMngService")
public class SatelliteMngServiceImpl implements SatelliteMngService {

    @Resource
    private SatelliteManagerMapper satelliteManagerMapper;
    public BaseResult<SatelliteManager> selectAllSatellite(SatelliteManager satelliteManager, int startIndex, int pageSize) {
       int total = satelliteManagerMapper.getSatTotal(satelliteManager);
        PageBean<SatelliteManager> pageBean = new PageBean<SatelliteManager>(startIndex,pageSize,total);
        satelliteManager.setPageBean(pageBean);
        List<SatelliteManager> list = satelliteManagerMapper.selectAllSatellite(satelliteManager);
        BaseResult<SatelliteManager> baseResult = new BaseResult<SatelliteManager>(total,list);
        return baseResult;
    }
}
