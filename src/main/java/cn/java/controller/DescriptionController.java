
package cn.java.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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

    @RequestMapping("/addDescription.do")
    @ResponseBody
    public String addDescription(@SessionAttribute("user") User user, Description description) {
        System.out.println(user);
        description.setUserId(user.getId());
        System.out.println(description);
        descriptionService.insertSelective(description);

        return "/submitSuccessful";
    }

    @RequestMapping("/selectSelective.do")
    public String selectSelective(Description description, Model model) {

        model.addAttribute("descriptionList", descriptionService.selectSelective(description));

        return "/viewDescription";
    }

    @RequestMapping("/selectOne.do")
    @ResponseBody
    public Description selectOne(@RequestBody Description record) {
        System.out.println(record);
        return descriptionService.selectSelective(record).get(0);
    }
}
