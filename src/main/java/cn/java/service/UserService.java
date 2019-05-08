/**
 * Project Name:XMAP
 * File Name:UserService.java
 * Package Name:cn.java.service
 * Date:2019年4月30日下午1:12:16
 * Copyright (c) 2019, All Rights Reserved.
 *
*/

package cn.java.service;

import java.util.List;

import cn.java.dto.User;

/**
 * Description: <br/>
 * Date: 2019年4月30日 下午1:12:16 <br/>
 * 
 * @author asus
 * @version
 * @see
 */
public interface UserService {
    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    List<User> selectSelective(User record);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    boolean isUsernameRegistered(User record);
}
