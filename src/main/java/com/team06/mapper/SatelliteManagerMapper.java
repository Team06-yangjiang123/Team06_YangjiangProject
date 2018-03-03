package com.team06.mapper;

import com.team06.domain.SatelliteManager;

import java.util.List;

/**
 * Created by dllo on 18/3/3.
 */
public interface SatelliteManagerMapper {

    int getSatTotal(SatelliteManager satelliteManager);

    List<SatelliteManager> selectAllSatellite(SatelliteManager satelliteManager);
}
