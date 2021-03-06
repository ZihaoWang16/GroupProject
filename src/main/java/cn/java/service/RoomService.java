/**
 * Project Name:XMAP
 * File Name:RoomService.java
 * Package Name:cn.java.service.impl
 * Date:2019年4月16日上午2:37:34
 * Copyright (c) 2019, All Rights Reserved.
 *
*/

package cn.java.service;

import java.util.List;
import java.util.Map;

import cn.java.dto.Room;

/**
 * Description: <br/>
 * Date: 2019年4月16日 上午2:37:34 <br/>
 * 
 * @author asus
 * @version
 * @see
 */
public interface RoomService {
    int deleteByPrimaryKey(Integer id);

    int insert(Room record);

    int insertSelective(Room record);

    Room selectByPrimaryKey(Integer id);

    List<Room> selectByWord(String word);

    List<Room> selectSelective(Room room);

    Map<String, Object> getRoomInfo(Room record);

    int updateByPrimaryKeySelective(Room record);

    int updateByPrimaryKey(Room record);

    List<Room> getOccupiedRoom(Room record);

}
