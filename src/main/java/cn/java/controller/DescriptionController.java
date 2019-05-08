
package cn.java.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.java.dto.Description;
import cn.java.service.DescriptionService;

/**
 * Description: <br/>
 * Date: 2019年5月8日17:57:33 <br/>
 * 
 * @author wzh
 * @version
 * @see
 */
@Controller
@RequestMapping("/Description")
public class DescriptionController {
    @Autowired
    DescriptionService descriptionService;

    @RequestMapping("/selectSelective.do")
    @ResponseBody
    public Map<String, Object> selectSelective(@RequestBody Description record) {

        return descriptionService.selectDescription(record);
    }
}
