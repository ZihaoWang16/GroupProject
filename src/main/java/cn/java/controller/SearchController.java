/**
 * Project Name:XMAP
 * File Name:SearchController.java
 * Package Name:cn.java.controller
 * Date:2019年5月10日下午4:39:12
 * Copyright (c) 2019, All Rights Reserved.
 *
*/

package cn.java.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.java.service.BuildingService;
import cn.java.service.FacilityService;
import cn.java.service.LessonService;
import cn.java.service.RoomService;

/**
 * Description: <br/>
 * Date: 2019年5月10日 下午4:39:12 <br/>
 * 
 * @author 55055
 * @version
 * @see
 */
@Controller
// @RequestMapping("/search")
public class SearchController {

    @Autowired
    BuildingService buildingService;

    @Autowired
    RoomService roomService;

    @Autowired
    LessonService lessonService;

    @Autowired
    FacilityService facilityService;

    @RequestMapping("/selectSelective.do")
    public String getSearchResult(String word, Model model) {
        model.addAttribute("buildingList", buildingService.selectByWord(word));
        model.addAttribute("roomList", roomService.selectByWord(word));
        model.addAttribute("lessonList", lessonService.selectByWord(word));
        model.addAttribute("facilityList", facilityService.selectByWord(word));

        return "/SearchResult";
    }

}
