/**
 * Project Name:XMAP
 * File Name:UserServiceTest.java
 * Package Name:cn.java.service
 * Date:2019年5月22日上午2:28:11
 * Copyright (c) 2019, All Rights Reserved.
 *
*/

package cn.java.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.transaction.annotation.Transactional;

import cn.java.dto.User;
import junit.framework.TestCase;

/**
 * Description: <br/>
 * Date: 2019年5月22日 上午2:28:11 <br/>
 * 
 * @author asus
 * @version
 * @see
 */
@Transactional
@RunWith(SpringRunner.class)
@SpringBootTest
public class UserServiceTest {
    @Autowired
    UserService userService;

    @Test
    public void insertSelectiveTest() {
        User user = new User();
        user.setUsername("aaaaaa");
        user.setPassword("aaaaaaaa");
        user.setAuthority(3);
        user.setFirstName("yeah");
        user.setLastName("doulikeit");
        TestCase.assertEquals(11, userService.insertSelective(user));
    }

    @Test
    public void selectSelectiveTest() {
        User user = new User();
        user.setUsername("wh");
        TestCase.assertEquals(1, userService.selectSelective(user).size());
    }

    @Test
    public void isUsernameRegisteredTest() {
        User user = new User();
        user.setUsername("wh");
        TestCase.assertEquals(true, userService.isUsernameRegistered(user));
    }
}
