package cn.java.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.java.dto.Facility;
import cn.java.service.FacilityService;

@Controller
@RequestMapping("/facility")
public class FacilityController {
    @Autowired
    FacilityService facilityService;

    @RequestMapping("/selectSelective.do")
    @ResponseBody
    public List<Facility> selectSelective(@RequestBody Facility record) {

        return facilityService.selectSelective(record);
    }
}
