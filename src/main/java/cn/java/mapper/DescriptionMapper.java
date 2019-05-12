package cn.java.mapper;

import java.util.List;

import cn.java.dto.Description;

public interface DescriptionMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Description record);

    int insertSelective(Description record);

    Description selectByPrimaryKey(Integer id);

    List<Description> selectSelective(Description record);

    int updateByPrimaryKeySelective(Description record);

    int updateByPrimaryKey(Description record);

}
