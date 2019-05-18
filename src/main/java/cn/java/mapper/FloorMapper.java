package cn.java.mapper;

import java.util.List;

import cn.java.dto.Floor;

public interface FloorMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Floor record);

    int insertSelective(Floor record);

    Floor selectByPrimaryKey(Integer id);

    List<Floor> selectSelective(Floor floor);

    int updateByPrimaryKeySelective(Floor record);

    int updateByPrimaryKey(Floor record);
}