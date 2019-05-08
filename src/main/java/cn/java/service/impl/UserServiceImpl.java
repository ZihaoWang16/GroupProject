/**
 * Project Name:XMAP
 * File Name:UserServiceImpl.java
 * Package Name:cn.java.service.impl
 * Date:2019年4月30日下午1:14:35
 * Copyright (c) 2019, All Rights Reserved.
 *
*/

package cn.java.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.java.dto.User;
import cn.java.mapper.UserMapper;
import cn.java.service.UserService;

/**
 * Description: <br/>
 * Date: 2019年4月30日 下午1:14:35 <br/>
 * 
 * @author asus
 * @version
 * @see
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper um;

    @Override
    public int deleteByPrimaryKey(Integer id) {

        // Auto-generated method stub
        return 0;
    }

    @Override
    public int insert(User record) {

        // Auto-generated method stub
        return 0;
    }

    @Override
    public int insertSelective(User record) {
        um.insertSelective(record);
        return record.getId();
    }

    @Override
    public User selectByPrimaryKey(Integer id) {

        // Auto-generated method stub
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(User record) {

        // Auto-generated method stub
        return 0;
    }

    @Override
    public int updateByPrimaryKey(User record) {

        // Auto-generated method stub
        return 0;
    }

    @Override
    public boolean isAccountRegistered(String username, String password) {
        User user = um.selectByUsername(username);
        if (user == null) {
            return false;
        }
        if (username.equals(user.getUsername()) && password.equals(user.getPassword())) {
            return true;
        }
        return false;
    }

    @Override
    public boolean isUsernameRegistered(String username) {
        if (um.selectByUsername(username) != null) {
            return true;
        }
        return false;
    }

    @Override
    public User selectByUsername(String username) {

        return um.selectByUsername(username);
    }

}
