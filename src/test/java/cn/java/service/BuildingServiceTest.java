/**
 * Project Name:XMAP
 * File Name:BuildingServiceTest.java
 * Package Name:cn.java.service
 * Date:2019年5月22日上午12:29:08
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

import cn.java.dto.Building;
import junit.framework.TestCase;

/**
 * Description: <br/>
 * Date: 2019年5月22日 上午12:29:08 <br/>
 * 
 * @author asus
 * @version
 * @see
 */
@Transactional
@RunWith(SpringRunner.class)
@SpringBootTest
public class BuildingServiceTest {
    @Autowired
    public BuildingService buildingService;

    @Test
    public void selectByWordTest() {
        TestCase.assertEquals(0, buildingService.selectByWord("BS").size());
    }

    @Test
    public void selectSelectiveTest() {
        Building building = new Building();
        building.setId(0);
        TestCase.assertEquals(22, buildingService.selectSelective(building).size());
    }

    @Test
    public void getBuildingInfoTest() {
        Building building = new Building();
        building.setId(1);
        TestCase.assertNotNull(buildingService.getBuildingInfo(building));
    }
}
