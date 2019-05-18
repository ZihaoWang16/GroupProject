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
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
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
    private UserService userService;

    // @RequestMapping("/selectByUsername.do")
    // @ResponseBody
    // public User selectByUsername(@RequestBody User user) {
    // return userService.selectSelective(user);
    // }

    @RequestMapping("/login.do")
    public String login(User user, HttpSession session, Model model) {
        System.out.println(user);
        List<User> userList = userService.selectSelective(user);
        if (userList.size() == 1) {
            session.setAttribute("user", userList.get(0));
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
    public String register(@Valid User user, BindingResult errorResult, HttpSession session, Model model) {
        System.out.println(user);
        Map<String, Object> errorMap = null;
        boolean flag = errorResult.hasErrors();
        if (userService.selectSelective(user).size() > 0) {
            model.addAttribute("error", "Username Already existed");
            return "/register";
        } else if (flag) {
            errorMap = new HashMap<String, Object>();
            List<FieldError> errorList = errorResult.getFieldErrors();
            for (FieldError fieldError : errorList) {
                String fieldname = fieldError.getField();
                String errorMessage = fieldError.getDefaultMessage();
                errorMap.put(fieldname, errorMessage);
            }
            model.addAttribute("errorMap", errorMap);
            model.addAttribute("user", user);
            return "/register";
        } else {
            System.out.println();
            userService.insertSelective(user);
            session.setAttribute("user", user);
            return "/registerSuccessful";
        }
    }

    @RequestMapping("/isUsernameRegistered.do")
    public @ResponseBody boolean isUsernameRegistered(@RequestBody User user) {
        if (userService.isUsernameRegistered(user))
            return true;

        return false;
    }

}
