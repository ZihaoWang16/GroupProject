package cn.java.mapper;

import cn.java.dto.Description;

public interface DescriptionMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Description record);

    int insertSelective(Description record);

    Description selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Description record);

    int updateByPrimaryKey(Description record);
}