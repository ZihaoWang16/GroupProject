/**
 * Project Name:XMAP
 * File Name:LoginInterceptor.java
 * Package Name:cn.java.config.interceptor
 * Date:2019年5月13日下午6:26:17
 * Copyright (c) 2019, All Rights Reserved.
 *
*/

package cn.java.config.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import cn.java.dto.User;

/**
 * Description: <br/>
 * Date: 2019年5月13日 下午6:26:17 <br/>
 * 
 * @author asus
 * @version
 * @see
 */
@Component
public class LoginInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {

        User user = (User) request.getSession().getAttribute("user");
        if (user != null)
            return true;

        request.setAttribute("interception", true);
        request.getRequestDispatcher("/pages/login.jsp").forward(request, response);
        return false;
    }

    @Override
    public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
            throws Exception {

        // Auto-generated method stub

    }

    @Override
    public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
            throws Exception {

        // Auto-generated method stub

    }

}
