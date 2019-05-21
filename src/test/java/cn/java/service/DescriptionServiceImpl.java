/**
 * Project Name:XMAP
 * File Name:DescriptionServiceImpl.java
 * Package Name:cn.java.service
 * Date:2019年5月22日上午1:19:52
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

import cn.java.dto.Description;
import junit.framework.TestCase;

/**
 * Description: <br/>
 * Date: 2019年5月22日 上午1:19:52 <br/>
 * 
 * @author asus
 * @version
 * @see
 */
@Transactional
@RunWith(SpringRunner.class)
@SpringBootTest
public class DescriptionServiceImpl {
    @Autowired
    DescriptionService descriptionService;

    @Test
    public void inserSelectiveTest() {
        Description description = new Description();
        description.setUserId(1);
        description.setBuildingId(1);
        description.setContent("Hello from the other side");
        TestCase.assertEquals(1, descriptionService.insertSelective(description));
    }

    @Test
    public void selectSelectiveTest() {
        Description description = new Description();
        description.setFacilityId(1);
        TestCase.assertEquals(4, descriptionService.selectSelective(description).size());
    }
}
