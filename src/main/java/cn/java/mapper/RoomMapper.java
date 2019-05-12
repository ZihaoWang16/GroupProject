package cn.java.mapper;

import java.util.List;

import cn.java.dto.Room;

public interface RoomMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Room record);

    int insertSelective(Room record);

    Room selectByPrimaryKey(Integer id);

    Room selectByWord(String word);

    List<Room> selectSelective(Room record);

    int updateByPrimaryKeySelective(Room record);

    int updateByPrimaryKey(Room record);
}