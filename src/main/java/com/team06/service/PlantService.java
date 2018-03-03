package com.team06.service;

import com.team06.domain.BaseResult;
import com.team06.domain.Plant;

/**
 * Created by dllo on 18/3/3.
 */
public interface PlantService {

    BaseResult<Plant> selectAllPlant(Plant plant,
                                     int startIndex,
                                     int pageSize);
}
