package com.team06.mapper;

import com.team06.domain.Crew;

import java.util.List;

/**
 * Created by dllo on 18/3/3.
 */
public interface CrewMapper {

    int getCrewTotal(Crew crew);
    List<Crew> selectAllCrew(Crew crew);
}
