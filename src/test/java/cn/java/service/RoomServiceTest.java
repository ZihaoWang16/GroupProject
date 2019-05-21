/**
 * Project Name:XMAP
 * File Name:RoomServiceTest.java
 * Package Name:cn.java.service
 * Date:2019年5月22日上午2:11:27
 * Copyright (c) 2019, All Rights Reserved.
 *
*/

package cn.java.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.transaction.annotation.Transactional;

import cn.java.dto.Room;
import junit.framework.TestCase;

/**
 * Description: <br/>
 * Date: 2019年5月22日 上午2:11:27 <br/>
 * 
 * @author asus
 * @version
 * @see
 */
@Transactional
@RunWith(SpringRunner.class)
@SpringBootTest
public class RoomServiceTest {
    @Autowired
    RoomService roomService;

    @Test
    public void selectSelectiveTest() {
        Room room = new Room();
        room.setBuildingId(1);
        room.setFloorId(2);
        TestCase.assertEquals(6, roomService.selectSelective(room).size());
    }

    @Test
    public void selectByPrimaryKeyTest() {
        TestCase.assertNotNull(roomService.selectByPrimaryKey(10));
    }

    @Test
    public void getRoomInfoTest() {
        Room room = new Room();
        room.setId(5);
        TestCase.assertNotNull(roomService.getRoomInfo(room).get("user"));
    }

    @Test
    public void getOccupiedRoomTest() {
        Room room = new Room();
        room.setBuildingId(1);
        room.setFloorId(3);
        TestCase.assertEquals(0, roomService.getOccupiedRoom(room).size());
    }

    @Test
    public void selectByWordTest() {
        TestCase.assertEquals(2, roomService.selectByWord("BSG5").size());
    }
}
