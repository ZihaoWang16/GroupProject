/**
 * Project Name:XMap
 * File Name:FloorController.java
 * Package Name:cn.java.controller
 * Date:2019年5月4日下午10:10:56
 * Copyright (c) 2019, All Rights Reserved.
 *
*/

package cn.java.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

<<<<<<< HEAD
import cn.java.dto.Floor;
=======
import cn.java.dto.Facility;
>>>>>>> develop
import cn.java.dto.Room;
import cn.java.service.FacilityService;
import cn.java.service.FloorService;
import cn.java.service.RoomService;

/**
 * Description: <br/>
 * Date: 2019年5月4日 下午10:10:56 <br/>
 * 
 * @author DELL
 * @version
 * @see
 */
@Controller
@RequestMapping("/floor")
public class FloorController {
    @Autowired
    FloorService floorService;

    @Autowired
    RoomService roomService;

    @Autowired
    FacilityService facilityService;

    @RequestMapping("/selectSelective.do")
<<<<<<< HEAD
    public String getFloorInfo(Room room, Floor floor, Model model) {
        model.addAttribute("selectedFloor", floorService.selectByPrimaryKey(room.getFloorId()));
        model.addAttribute("roomList", roomService.selectSelective(room));
        model.addAttribute("floorList", floorService.selectSelective(floor));
=======
    public String getFloorInfo(Room room, Facility facility, Model model) {
        model.addAttribute("floor", floorService.selectByPrimaryKey(room.getFloorId()));
        model.addAttribute("roomList", roomService.selectSelective(room));
        model.addAttribute("facilityList", facilityService.selectSelective(facility));
>>>>>>> develop
        return "/floorMap";
    }

}
