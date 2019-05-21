/**
 * Project Name:XMAP
 * File Name:FacilityServiceTest.java
 * Package Name:cn.java.service
 * Date:2019年5月22日上午1:43:56
 * Copyright (c) 2019, All Rights Reserved.
 *
*/

package cn.java.service;
/**
 * Description:	   <br/>
 * Date:     2019年5月22日 上午1:43:56 <br/>
 * @author   asus
 * @version  
 * @see 	 
 */

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.transaction.annotation.Transactional;

import cn.java.dto.Facility;
import junit.framework.TestCase;

@Transactional
@RunWith(SpringRunner.class)
@SpringBootTest
public class FacilityServiceTest {
    @Autowired
    FacilityService facilityService;

    @Test
    public void selectByWordTest() {
        TestCase.assertEquals(2, facilityService.selectByWord("printer").size());
    }

    @Test
    public void selectSelectiveTest() {
        Facility facility = new Facility();
        facility.setBuildingId(1);
        TestCase.assertEquals(17, facilityService.selectSelective(facility).size());
    }
}
