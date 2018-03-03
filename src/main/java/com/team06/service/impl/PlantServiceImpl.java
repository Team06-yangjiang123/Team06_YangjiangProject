package com.team06.service.impl;

import com.team06.domain.BaseResult;
import com.team06.domain.Plant;
import com.team06.mapper.PlantMapper;
import com.team06.page.PageBean;
import com.team06.service.PlantService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by dllo on 18/3/3.
 */
@Service("plantService")
public class PlantServiceImpl implements PlantService {

    @Resource
    private PlantMapper plantMapper;
    public BaseResult<Plant> selectAllPlant(Plant plant, int startIndex, int pageSize) {

        int total = plantMapper.getPlantTotal(plant);
        PageBean<Plant> pageBean = new PageBean<Plant>(startIndex,pageSize,total);
        plant.setPageBean(pageBean);
        List<Plant> list = plantMapper.selectAllPlant(plant);
        BaseResult<Plant> baseResult = new BaseResult<Plant>(total,list);
        return baseResult;
    }
}
