/**
 * Project Name:XMAP
 * File Name:RoomController.java
 * Package Name:cn.java.controller
 * Date:2019年4月16日上午2:41:39
 * Copyright (c) 2019, All Rights Reserved.
 *
*/

package cn.java.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.java.dto.Building;
import cn.java.service.BuildingService;

/**
 * Description: <br/>
 * Date: 2019年4月16日 上午2:41:39 <br/>
 * 
 * @author SidaHuang
 * @version
 * @see
 */
@Controller
@RequestMapping("/building")
public class BuildingController {
    @Autowired
    BuildingService buildingService;

    // @RequestMapping("/selectSelective.do")
    // public String showMap(Building building, Model model) {
    // model.addAttribute("buildingList",
    // buildingService.selectSelective(building));
    // // model.addAttribute("buildingImgUrl",
    // // buildingService.selectSelective(building));
    // // model.addAttribute("building",
    // // buildingService.selectSelective(building));
    // return "/campusMap";
    // }

    @RequestMapping("/getBuildingInfo.do")
    @ResponseBody
    public Map<String, Object> getBuildingInfo(@RequestBody Building building) {

        return buildingService.getBuildingInfo(building);
    }

    @RequestMapping("/selectSelective.do")
    @ResponseBody
    public List<Building> selectSelective(@RequestBody Building building) {

        return buildingService.selectSelective(building);
    }

}
