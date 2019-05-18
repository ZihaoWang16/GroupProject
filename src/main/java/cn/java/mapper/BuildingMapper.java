package cn.java.mapper;

import java.util.List;

import cn.java.dto.Building;

public interface BuildingMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Building record);

    int insertSelective(Building record);

    Building selectByPrimaryKey(Integer id);

    List<Building> selectByWord(String word);

    List<Building> selectSelective(Building building);

    int updateByPrimaryKeySelective(Building record);

    int updateByPrimaryKey(Building record);

    // List<Room> selectSelective(Room record);
}