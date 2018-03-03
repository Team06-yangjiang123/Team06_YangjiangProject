package com.team06.mapper;

import com.team06.domain.Plant;

import java.util.List;

/**
 * Created by dllo on 18/3/3.
 */
public interface PlantMapper {

    int getPlantTotal(Plant plant);
    List<Plant> selectAllPlant(Plant plant);

}
