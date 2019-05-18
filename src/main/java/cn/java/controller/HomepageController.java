/**
 * Project Name:XMAP
 * File Name:UserController.java
 * Package Name:cn.java.controller
 * Date:Apr 28, 20194:39:47 PM
 * Copyright (c) 2019, All Rights Reserved.
 *
*/

package cn.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Description: <br/>
 * Date: Apr 28, 2019 4:39:47 PM <br/>
 * 
 * @author WH
 * @version
 * @see
 */
@Controller
public class HomepageController {

    @RequestMapping("/")
    public String Homepage() {
        return "redirect:/pages/campusMap.jsp";
    }

}
