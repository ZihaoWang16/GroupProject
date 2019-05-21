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

import cn.java.dto.Description;
import cn.java.dto.Lesson;
import cn.java.dto.Room;
import cn.java.mapper.DescriptionMapper;
import cn.java.mapper.LessonMapper;
import cn.java.mapper.RoomMapper;
import cn.java.mapper.UserMapper;
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

    @Autowired
    DescriptionMapper descriptionMapper;

    @Autowired
    UserMapper userMapper;

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
    public Map<String, Object> getRoomInfo(Room record) {
        Integer id = record.getId();
        Room room = roomMapper.selectByPrimaryKey(id);
        Lesson queryLesson = new Lesson();
        queryLesson.setRoomId(id);
        Description queryDescription = new Description();
        queryDescription.setRoomId(id);
        List<Description> descriptionList = descriptionMapper.selectSelective(queryDescription);

        Map<String, Object> returnMap = new HashMap<>();
        returnMap.put("room", room);
        returnMap.put("timetable", lessonMapper.selectSelective(queryLesson));
        if (descriptionList.size() != 0) {
            returnMap.put("description", descriptionList.get(0));
            returnMap.put("user", userMapper.selectByPrimaryKey(descriptionList.get(0).getUserId()));
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

    @Override
    public List<Room> getOccupiedRoom(Room record) {
        Date date = new Date();
        Calendar cal = Calendar.getInstance();
        int h = cal.get(Calendar.HOUR_OF_DAY);
        SimpleDateFormat dataFm = new SimpleDateFormat("EEE", Locale.US);
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
        map.put("day", day);
        map.put("hour", h);
        // map.put("day", 1);
        // map.put("hour", 15);
        map.put("buildingId", record.getBuildingId());
        map.put("floorId", record.getFloorId());
        return roomMapper.getOccupiedRoom(map);
    }

    @Override
    public List<Room> selectByWord(String word) {

        return roomMapper.selectByWord(word);
    }

}
