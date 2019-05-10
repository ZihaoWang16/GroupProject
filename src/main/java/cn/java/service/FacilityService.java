/**
 * Project Name:XMAP
 * File Name:FacilityService.java
 * Package Name:cn.java.service
 * Date:2019年4月30日下午1:11:46
 * Copyright (c) 2019, All Rights Reserved.
 *
*/

package cn.java.service;

import java.util.List;
import java.util.Map;

import cn.java.dto.Facility;

/**
 * Description: <br/>
 * Date: 2019年4月30日 下午1:11:46 <br/>
 * 
 * @author asus
 * @version
 * @see
 */
public interface FacilityService {
    int deleteByPrimaryKey(Integer id);

    int insert(Facility record);

    int insertSelective(Facility record);

    Facility selectByPrimaryKey(Integer id);

    List<Facility> selectSelective(Facility facility);

    int updateByPrimaryKeySelective(Facility record);

    int updateByPrimaryKey(Facility record);

    Map<String, Object> selectFacility(Facility record);
}
