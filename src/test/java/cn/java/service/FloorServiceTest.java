/**
 * Project Name:XMAP
 * File Name:FloorServiceTest.java
 * Package Name:cn.java.service
 * Date:2019年5月22日上午1:54:37
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

import cn.java.dto.Floor;
import junit.framework.TestCase;

/**
 * Description: <br/>
 * Date: 2019年5月22日 上午1:54:37 <br/>
 * 
 * @author asus
 * @version
 * @see
 */
@Transactional
@RunWith(SpringRunner.class)
@SpringBootTest
public class FloorServiceTest {
    @Autowired
    FloorService floorService;

    @Test
    public void selectByPrimaryKeyTest() {
        TestCase.assertNotNull(floorService.selectByPrimaryKey(3));
    }

    @Test
    public void selectSelectiveTest() {
        Floor floor = new Floor();
        floor.setBuildingId(1);
        TestCase.assertEquals(7, floorService.selectSelective(floor).size());
    }
}
