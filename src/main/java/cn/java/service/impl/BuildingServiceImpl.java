/**
 * Project Name:XMAP
 * File Name:BuildingServiceImpl.java
 * Package Name:cn.java.service.impl
 * Date:2019年4月16日上午2:35:02
 * Copyright (c) 2019, All Rights Reserved.
 *
*/

package cn.java.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.java.dto.Building;
import cn.java.dto.Description;
import cn.java.mapper.BuildingMapper;
import cn.java.mapper.DescriptionMapper;
import cn.java.mapper.UserMapper;
import cn.java.service.BuildingService;

/**
 * Description: <br/>
 * Date: 2019年4月16日 上午2:35:02 <br/>
 * 
 * @author asus
 * @version
 * @see
 */
@Service
public class BuildingServiceImpl implements BuildingService {
    @Autowired
    BuildingMapper buildingMapper;

    @Autowired
    UserMapper userMapper;

    @Autowired
    DescriptionMapper descriptionMapper;

    @Override
    public int deleteByPrimaryKey(Integer id) {

        // Auto-generated method stub
        return 0;
    }

    @Override
    public int insert(Building record) {

        // Auto-generated method stub
        return 0;
    }

    @Override
    public int insertSelective(Building record) {

        // Auto-generated method stub
        return 0;
    }

    @Override
    public Building selectByPrimaryKey(Integer id) {

        // Auto-generated method stub
        return null;
    }

    @Override
    public List<Building> selectByWord(String word) {

        return buildingMapper.selectByWord(word);
    }

    @Override
    public int updateByPrimaryKeySelective(Building record) {

        // Auto-generated method stub
        return 0;
    }

    @Override
    public List<Building> selectSelective(Building building) {
        if (building.getId() != null && building.getId() == 0) {
            building.setId(null);
        }
        return buildingMapper.selectSelective(building);
    }

    @Override
    public int updateByPrimaryKey(Building record) {

        // Auto-generated method stub
        return 0;
    }

    @Override
    public Map<String, Object> getBuildingInfo(Building record) {
        Integer id = record.getId();
        Building building = buildingMapper.selectByPrimaryKey(id);
        Description queryDescription = new Description();
        queryDescription.setBuildingId(id);
        List<Description> descriptionList = descriptionMapper.selectSelective(queryDescription);

        Map<String, Object> returnMap = new HashMap<>();
        returnMap.put("building", building);
        if (descriptionList.size() != 0) {
            returnMap.put("description", descriptionList.get(0));
            returnMap.put("user", userMapper.selectByPrimaryKey(descriptionList.get(0).getUserId()));
        }
        return returnMap;
    }

}
