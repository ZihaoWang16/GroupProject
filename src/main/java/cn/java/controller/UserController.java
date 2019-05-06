/**
 * Project Name:XMAP
 * File Name:UserController.java
 * Package Name:cn.java.controller
 * Date:Apr 28, 20194:39:47 PM
 * Copyright (c) 2019, All Rights Reserved.
 *
*/

package cn.java.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.java.dto.User;
import cn.java.service.UserService;

/**
 * Description: <br/>
 * Date: Apr 28, 2019 4:39:47 PM <br/>
 * 
 * @author WH
 * @version
 * @see
 */
@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService us;

    @RequestMapping("/selectByUsername.do")
    @ResponseBody
    public User selectByUsername(String username) {
        return us.selectByUsername(username);
    }

    @RequestMapping("/login.do")
    public String login(String username, String password, HttpSession session, Model model) {
        if (us.isAccountRegistered(username, password)) {
            Map<String, Object> userMap = new HashMap<String, Object>();
            userMap.put("username", username);
            userMap.put("userId", us.selectByUsername(username).getId());
            session.setAttribute("userMap", userMap);
            model.addAttribute("isRegistered", true);
            System.out.println("login successful");
        } else {
            System.out.println("login failed");
            model.addAttribute("isRegistered", false);
            model.addAttribute("error", "Sorry, your account is not registered");
        }
        return "/login";
    }

    @RequestMapping("/register.do")
    public String register(User user, HttpSession session, Model model) {
        if (us.isUsernameRegistered(user.getUsername())) {
            model.addAttribute("error", "Username Already existed");
            return "/register";
        } else {
            // System.out.println(user.getPassword());
            // System.out.println(user.getFirstName());
            // System.out.println(user.getLastName());
            // System.out.println(user.getCity());
            int userId = us.insertSelective(user);
            Map<String, Object> userMap = new HashMap<String, Object>();
            userMap.put("username", user.getUsername());
            userMap.put("userId", userId);
            session.setAttribute("userMap", userMap);
            return "/registerSuccessful";
        }
    }

    @RequestMapping("/isUsernameRegistered.do")
    public @ResponseBody boolean isUsernameRegistered(@RequestBody Map<String, Object> map) {
        if (us.isUsernameRegistered((String) map.get("username"))) {
            return true;
        }
        return false;
    }

}
