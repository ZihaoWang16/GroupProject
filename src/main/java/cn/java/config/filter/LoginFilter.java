/**
 * Project Name:XMAP
 * File Name:LoginFilter.java
 * Package Name:cn.java.config.filter
 * Date:2019年5月13日下午7:28:25
 * Copyright (c) 2019, All Rights Reserved.
 *
*/

package cn.java.config.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.java.dto.User;

/**
 * Description: <br/>
 * Date: 2019年5月13日 下午7:28:25 <br/>
 * 
 * @author asus
 * @version
 * @see
 */
@WebFilter(urlPatterns = "/pages/user/*")
// @Configuration
public class LoginFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

        // Auto-generated method stub

    }

    @Override
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) res;
        User user = (User) request.getSession().getAttribute("user");
        if (user == null) {
            request.setAttribute("interception", true);
            request.getRequestDispatcher("/pages/login.jsp").forward(request, response);
            // response.sendRedirect("/pages/login.jsp");
        } else
            chain.doFilter(req, res);
    }

    @Override
    public void destroy() {

        // Auto-generated method stub

    }

}
