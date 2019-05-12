package cn.java.mapper;

import cn.java.dto.Facility;

public interface FacilityMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Facility record);

    int insertSelective(Facility record);

    Facility selectByPrimaryKey(Integer id);

    Facility selectByWord(String word);

    int updateByPrimaryKeySelective(Facility record);

    int updateByPrimaryKey(Facility record);
}