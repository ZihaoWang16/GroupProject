/**
 * Project Name:XMAP
 * File Name:BuildingService.java
 * Package Name:cn.java.service.impl
 * Date:2019年4月16日上午2:35:21
 * Copyright (c) 2019, All Rights Reserved.
 *
*/

package cn.java.service;

import java.util.List;
import java.util.Map;

import cn.java.dto.Building;

/**
 * Description: <br/>
 * Date: 2019年5月4日 <br/>
 * 
 * @author SidaHuang
 * @version
 * @see
 */
public interface BuildingService {
    int deleteByPrimaryKey(Integer id);

    int insert(Building record);

    int insertSelective(Building record);

    Building selectByPrimaryKey(Integer id);

    List<Building> selectByWord(String word);

    int updateByPrimaryKeySelective(Building record);

    int updateByPrimaryKey(Building record);

    List<Building> selectSelective(Building building);

    Map<String, Object> getBuildingInfo(Building building);
}
