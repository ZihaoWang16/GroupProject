package cn.java.mapper;

import java.util.List;

import cn.java.dto.Facility;

public interface FacilityMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Facility record);

    int insertSelective(Facility record);

    Facility selectByPrimaryKey(Integer id);

    Facility selectByWord(String word);

    List<Facility> selectSelective(Facility record);

    int updateByPrimaryKeySelective(Facility record);

    int updateByPrimaryKey(Facility record);
}