
package cn.java.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import cn.java.dto.Description;
import cn.java.dto.User;
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
@RequestMapping("/description")
public class DescriptionController {
    @Autowired
    DescriptionService descriptionService;

    @RequestMapping("/selectSelective.do")
    @ResponseBody
    public Map<String, Object> selectSelective(@RequestBody Description record) {

        return descriptionService.selectDescription(record);
    }

    @RequestMapping("/submit.do")
    @ResponseBody
    public String submitDescription(@SessionAttribute("user") User user, Description description) {
        System.out.println(user);
        description.setUserId(user.getId());
        System.out.println(description);
        descriptionService.insertSelective(description);

        return "submitSuccessful";
    }

    @RequestMapping("/view.do")
    @ResponseBody
    public String viewDescription(Description description) {

        descriptionService.selectSelective(description);

        return "/viewSuccessful";
    }

}
