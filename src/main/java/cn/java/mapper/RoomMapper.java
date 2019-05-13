package cn.java.mapper;

import java.util.List;
import java.util.Map;

import cn.java.dto.Room;

public interface RoomMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Room record);

    int insertSelective(Room record);

    Room selectByPrimaryKey(Integer id);

    List<Room> selectByWord(String word);

    List<Room> selectSelective(Room record);

    int updateByPrimaryKeySelective(Room record);

    int updateByPrimaryKey(Room record);

    List<Room> getOccupiedRoom(Map<String, Object> map);
}