/**
 * Project Name:XMAP
 * File Name:LessonServiceTest.java
 * Package Name:cn.java.service
 * Date:2019年5月22日上午2:06:51
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

import junit.framework.TestCase;

/**
 * Description: <br/>
 * Date: 2019年5月22日 上午2:06:51 <br/>
 * 
 * @author asus
 * @version
 * @see
 */
@Transactional
@RunWith(SpringRunner.class)
@SpringBootTest
public class LessonServiceTest {
    @Autowired
    LessonService lessonService;

    @Test
    public void selectByWordTest() {
        TestCase.assertEquals(1, lessonService.selectByWord("ACF401").size());
    }
}
