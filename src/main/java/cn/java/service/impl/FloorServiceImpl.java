/**
 * Project Name:XMAP
 * File Name:FloorServiceImpl.java
 * Package Name:cn.java.service.impl
 * Date:2019年5月4日下午9:10:45
 * Copyright (c) 2019, All Rights Reserved.
 *
*/

package cn.java.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.java.dto.Floor;
import cn.java.mapper.FloorMapper;
import cn.java.service.FloorService;

/**
 * Description: <br/>
 * Date: 2019年5月4日 下午9:10:45 <br/>
 * 
 * @author asus
 * @version
 * @see
 */
@Service
public class FloorServiceImpl implements FloorService {
    @Autowired
    FloorMapper floorMapper;

    @Override
    public int deleteByPrimaryKey(Integer id) {

        // Auto-generated method stub
        return 0;
    }

    @Override
    public int insert(Floor record) {

        // Auto-generated method stub
        return 0;
    }

    @Override
    public int insertSelective(Floor record) {

        // Auto-generated method stub
        return 0;
    }

    @Override

    public Floor selectByPrimaryKey(Integer id) {

        return floorMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(Floor record) {

        // Auto-generated method stub
        return 0;
    }

    @Override
    public int updateByPrimaryKey(Floor record) {

        // Auto-generated method stub
        return 0;
    }

    @Override
    public List<Floor> selectSelective(Floor floor) {

        // Auto-generated method stub
        System.out.println(floorMapper.selectSelective(floor));
        return floorMapper.selectSelective(floor);
    }

}
