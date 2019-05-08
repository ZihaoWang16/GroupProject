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

import com.fasterxml.jackson.annotation.JsonTypeInfo.Id;

import cn.java.dto.Room;
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

    @RequestMapping("/selectSelective.do")
    public String getFloorInfo(Room room, Model model) {
        model.addAttribute("floor", floorService.selectByPrimaryKey(room.getFloorId()));
        model.addAttribute("roomList", roomService.selectSelective(room));
        return "/floorMap";
    }
}
