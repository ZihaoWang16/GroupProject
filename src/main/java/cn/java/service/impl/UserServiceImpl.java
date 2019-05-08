/**
 * Project Name:XMAP
 * File Name:UserServiceImpl.java
 * Package Name:cn.java.service.impl
 * Date:2019年4月30日下午1:14:35
 * Copyright (c) 2019, All Rights Reserved.
 *
*/

package cn.java.service.impl;


import java.util.List;

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
    private UserMapper userMapper;

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
        userMapper.insertSelective(record);
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
    public List<User> selectSelective(User record) {
        
        return userMapper.selectSelective(record);
    }

    @Override
    public boolean isUsernameRegistered(User record) {
        if (userMapper.selectSelective(record).size() > 0) {
            return true;
        }
        return false;
    }

}
