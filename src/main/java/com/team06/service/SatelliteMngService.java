package com.team06.service;

import com.team06.domain.BaseResult;
import com.team06.domain.SatelliteManager;

/**
 * Created by dllo on 18/3/3.
 */
public interface SatelliteMngService {
    BaseResult<SatelliteManager> selectAllSatellite(SatelliteManager satelliteManager,
                                                    int startIndex,
                                                    int pageSize);
}
