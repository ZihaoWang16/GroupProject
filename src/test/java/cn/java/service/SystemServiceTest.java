/**
 * Project Name:XMAP
 * File Name:SystemServiceTest.java
 * Package Name:cn.java.service
 * Date:2019年5月22日上午2:39:00
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

import cn.java.dto.Building;
import cn.java.dto.Description;
import cn.java.dto.Facility;
import cn.java.dto.Floor;
import cn.java.dto.Room;
import cn.java.dto.User;
import junit.framework.TestCase;

/**
 * Description: <br/>
 * Date: 2019年5月22日 上午2:39:00 <br/>
 * 
 * @author asus
 * @version
 * @see
 */
@Transactional
@RunWith(SpringRunner.class)
@SpringBootTest
public class SystemServiceTest {
    @Autowired
    UserService userService;

    @Autowired
    RoomService roomService;

    @Autowired
    LessonService lessonService;

    @Autowired
    FloorService floorService;

    @Autowired
    FacilityService facilityService;

    @Autowired
    DescriptionService descriptionService;

    @Autowired
    public BuildingService buildingService;

    @Test
    public void selectByWordBuildingTest() {
        TestCase.assertEquals(0, buildingService.selectByWord("BS").size());
    }

    @Test
    public void selectSelectiveBuildingTest() {
        Building building = new Building();
        building.setId(0);
        TestCase.assertEquals(22, buildingService.selectSelective(building).size());
    }

    @Test
    public void getBuildingInfoBuildingTest() {
        Building building = new Building();
        building.setId(1);
        TestCase.assertNotNull(buildingService.getBuildingInfo(building));
    }

    @Test
    public void inserSelectiveDescriptionTest() {
        Description description = new Description();
        description.setUserId(1);
        description.setBuildingId(1);
        description.setContent("Hello from the other side");
        TestCase.assertEquals(1, descriptionService.insertSelective(description));
    }

    @Test
    public void selectSelectiveDescriptionTest() {
        Description description = new Description();
        description.setFacilityId(1);
        TestCase.assertEquals(4, descriptionService.selectSelective(description).size());
    }

    @Test
    public void selectByWordFacilityTest() {
        TestCase.assertEquals(2, facilityService.selectByWord("printer").size());
    }

    @Test
    public void selectSelectiveFacilityTest() {
        Facility facility = new Facility();
        facility.setBuildingId(1);
        TestCase.assertEquals(17, facilityService.selectSelective(facility).size());
    }

    @Test
    public void selectByPrimaryKeyFloorTest() {
        TestCase.assertNotNull(floorService.selectByPrimaryKey(3));
    }

    @Test
    public void selectSelectiveFloorTest() {
        Floor floor = new Floor();
        floor.setBuildingId(1);
        TestCase.assertEquals(7, floorService.selectSelective(floor).size());
    }

    @Test
    public void selectByWordLessonTest() {
        TestCase.assertEquals(1, lessonService.selectByWord("ACF401").size());
    }

    @Test
    public void selectSelectiveRoomTest() {
        Room room = new Room();
        room.setBuildingId(1);
        room.setFloorId(2);
        TestCase.assertEquals(6, roomService.selectSelective(room).size());
    }

    @Test
    public void selectByPrimaryKeyRoomTest() {
        TestCase.assertNotNull(roomService.selectByPrimaryKey(10));
    }

    @Test
    public void getRoomInfoRoomTest() {
        Room room = new Room();
        room.setId(5);
        TestCase.assertNotNull(roomService.getRoomInfo(room).get("user"));
    }

    @Test
    public void getOccupiedRoomRoomTest() {
        Room room = new Room();
        room.setBuildingId(1);
        room.setFloorId(3);
        TestCase.assertEquals(0, roomService.getOccupiedRoom(room).size());
    }

    @Test
    public void selectByWordRoomTest() {
        TestCase.assertEquals(2, roomService.selectByWord("BSG5").size());
    }

    @Test
    public void insertSelectiveUserTest() {
        User user = new User();
        user.setUsername("aaaaaa");
        user.setPassword("aaaaaaaa");
        user.setAuthority(3);
        user.setFirstName("yeah");
        user.setLastName("doulikeit");
        TestCase.assertEquals(14, userService.insertSelective(user));
    }

    @Test
    public void selectSelectiveUserTest() {
        User user = new User();
        user.setUsername("wh");
        TestCase.assertEquals(1, userService.selectSelective(user).size());
    }

    @Test
    public void isUsernameRegisteredUserTest() {
        User user = new User();
        user.setUsername("wh");
        TestCase.assertEquals(true, userService.isUsernameRegistered(user));
    }
}
