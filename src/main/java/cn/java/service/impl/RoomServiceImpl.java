/**
 * Project Name:XMAP
 * File Name:RoomServiceImpl.java
 * Package Name:cn.java.service.impl
 * Date:2019年4月16日上午2:37:05
 * Copyright (c) 2019, All Rights Reserved.
 *
*/

package cn.java.service.impl;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.java.dto.Lesson;
import cn.java.dto.Room;
import cn.java.mapper.LessonMapper;
import cn.java.mapper.RoomMapper;
import cn.java.service.RoomService;

/**
 * Description: <br/>
 * Date: 2019年4月16日 上午2:37:05 <br/>
 * 
 * @author asus
 * @version
 * @see
 */
@Service
public class RoomServiceImpl implements RoomService {

    @Autowired
    RoomMapper roomMapper;

    @Autowired
    LessonMapper lessonMapper;

    @Override
    public int deleteByPrimaryKey(Integer id) {

        // Auto-generated method stub
        return 0;
    }

    @Override
    public int insert(Room record) {

        // Auto-generated method stub
        return 0;
    }

    @Override
    public int insertSelective(Room record) {

        // Auto-generated method stub
        return 0;
    }

    @Override
    public List<Room> selectSelective(Room room) {

        // Auto-generated method stub
        return roomMapper.selectSelective(room);
    }

    @Override
    public Room selectByPrimaryKey(Integer id) {

        // Auto-generated method stub
        return roomMapper.selectByPrimaryKey(id);
    }

    @Override
    public Map<String, Object> selectSelectiveWithTimetable(Room record) {
        List<Room> roomList = roomMapper.selectSelective(record);
        Map<String, Object> returnMap = new HashMap<>();
        if (roomList.size() != 0) {
            Room room = roomList.get(0);
            Lesson queryLesson = new Lesson();
            queryLesson.setRoomId(room.getId());

            returnMap.put("room", room);
            returnMap.put("timetable", lessonMapper.selectSelective(queryLesson));
        }

        return returnMap;
    }

    @Override
    public int updateByPrimaryKeySelective(Room record) {

        // Auto-generated method stub
        return 0;
    }

    @Override
    public int updateByPrimaryKey(Room record) {

        // Auto-generated method stub
        return 0;
    }
    
    public List<Room> getOccupiedRoom(Room record) {
		Date date = new Date();
		Calendar cal=Calendar.getInstance();   
		int h=cal.get(Calendar.HOUR_OF_DAY);    
		SimpleDateFormat dataFm = new SimpleDateFormat("EEE",Locale.US);
		String day = dataFm.format(date);
		switch (day) {
		case "Mon":
			day = "1";
			break;
		case "Tue":
			day = "2";
			break;
		case "Wen":
			day = "3";
			break;
		case "Thu":
			day = "4";
			break;
		case "Fri":
			day = "5";
			break;
		case "Sat":
			day = "6";
			break;
		case "Sun":
			day = "7";
			break;
		}
		
		Map<String, Object> map = new HashMap<>();
		//map.put("day", day);
		//map.put("hour", h);
		map.put("day", 1);
		map.put("hour", 9);
		map.put("buildingId", record.getBuildingId());
		map.put("floorId", record.getFloorId());
		return roomMapper.getOccupiedRoom(map);
	}

}
