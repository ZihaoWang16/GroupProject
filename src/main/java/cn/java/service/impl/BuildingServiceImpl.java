/**
 * Project Name:XMAP
 * File Name:BuildingServiceImpl.java
 * Package Name:cn.java.service.impl
 * Date:2019年4月16日上午2:35:02
 * Copyright (c) 2019, All Rights Reserved.
 *
*/

package cn.java.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.java.dto.Building;
import cn.java.dto.Lesson;
import cn.java.dto.Room;
import cn.java.mapper.BuildingMapper;
import cn.java.mapper.LessonMapper;
import cn.java.mapper.RoomMapper;
import cn.java.service.BuildingService;

/**
 * Description: <br/>
 * Date: 2019年4月16日 上午2:35:02 <br/>
 * 
 * @author asus
 * @version
 * @see
 */
@Service
public class BuildingServiceImpl implements BuildingService {
//	@Autowired
//    RoomMapper roomMapper;
//
//    @Autowired
//    LessonMapper lessonMapper;
	@Autowired
    BuildingMapper buildingMapper;

    @Override
    public int deleteByPrimaryKey(Integer id) {

        // Auto-generated method stub
        return 0;
    }

    @Override
    public int insert(Building record) {

        // Auto-generated method stub
        return 0;
    }

    @Override
    public int insertSelective(Building record) {

        // Auto-generated method stub
        return 0;
    }

    @Override
    public Building selectByPrimaryKey(Integer id) {

        // Auto-generated method stub
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(Building record) {

        // Auto-generated method stub
        return 0;
    }
    
//    @Override
//    public Map<String, Object> selectSelectiveWithTimetable(Room record) {
//        List<Room> roomList = roomMapper.selectSelective(record);
//        Map<String, Object> returnMap = new HashMap<>();
//        if (roomList.size() != 0) {
//            Room room = roomList.get(0);
//            Lesson queryLesson = new Lesson();
//            queryLesson.setRoomId(room.getId());
//
//            returnMap.put("room", room);
//            returnMap.put("timetable", lessonMapper.selectSelective(queryLesson));
//        }
//
//        return returnMap;
//    }
    @Override
    public Map<String, Object> selectBuilding(Building id) {
        List<Building> buildingList = buildingMapper.selectSelective(id);
        Map<String, Object> returnMap = new HashMap<>();
        if (buildingList.size() != 0) {
            Building building = buildingList.get(0);
            returnMap.put("building", building);
        }
        return returnMap;
    }

    @Override
    public int updateByPrimaryKey(Building record) {

        // Auto-generated method stub
        return 0;
    }

}
