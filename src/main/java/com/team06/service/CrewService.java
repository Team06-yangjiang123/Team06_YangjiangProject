package com.team06.service;

import com.team06.domain.BaseResult;
import com.team06.domain.Crew;

/**
 * Created by dllo on 18/3/3.
 */
public interface CrewService {

    BaseResult<Crew> selectAllCrew(Crew crew,
                                   int startIndex,
                                   int pageSize);
}
