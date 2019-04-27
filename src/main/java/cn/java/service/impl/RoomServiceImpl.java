/**
 * Project Name:XMAP
 * File Name:RoomServiceImpl.java
 * Package Name:cn.java.service.impl
 * Date:2019年4月16日上午2:37:05
 * Copyright (c) 2019, All Rights Reserved.
 *
*/

package cn.java.service.impl;

import java.util.HashMap;
import java.util.List;
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
    public Room selectByPrimaryKey(Integer id) {

        // Auto-generated method stub
        return null;
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

}
