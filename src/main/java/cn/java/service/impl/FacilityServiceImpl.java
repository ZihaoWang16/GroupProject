/**
 * Project Name:XMAP
 * File Name:FacilityServiceImpl.java
 * Package Name:cn.java.service.impl
 * Date:2019年4月30日下午1:14:08
 * Copyright (c) 2019, All Rights Reserved.
 *
*/

package cn.java.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.java.dto.Facility;
import cn.java.mapper.FacilityMapper;
import cn.java.service.FacilityService;

/**
 * Description: <br/>
 * Date: 2019年4月30日 下午1:14:08 <br/>
 * 
 * @author asus
 * @version
 * @see
 */
@Service
public class FacilityServiceImpl implements FacilityService {
    @Autowired
    FacilityMapper facilityMapper;

    @Override
    public int deleteByPrimaryKey(Integer id) {

        // Auto-generated method stub
        return 0;
    }

    @Override
    public int insert(Facility record) {

        // Auto-generated method stub
        return 0;
    }

    @Override
    public int insertSelective(Facility record) {

        // Auto-generated method stub
        return 0;
    }

    @Override
    public Facility selectByPrimaryKey(Integer id) {

        // Auto-generated method stub
        return null;
    }

    @Override
    public List<Facility> selectByWord(String word) {

        return facilityMapper.selectByWord(word);
    }

    @Override
    public int updateByPrimaryKeySelective(Facility record) {

        // Auto-generated method stub
        return 0;
    }

    @Override
    public int updateByPrimaryKey(Facility record) {

        // Auto-generated method stub
        return 0;
    }

    @Override
    public List<Facility> selectSelective(Facility facility) {

        // Auto-generated method stub
        return facilityMapper.selectSelective(facility);
    }

}
