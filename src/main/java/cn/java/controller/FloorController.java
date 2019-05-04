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

import cn.java.service.FloorService;

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

    @RequestMapping("/selectSelective.do")
    public String getFloorInfo(Integer floorId, Integer buildingId, Model model) {
        model.addAttribute("floor", floorService.selectByPrimaryKey(floorId));
        return "/floorMap";
    }
}
