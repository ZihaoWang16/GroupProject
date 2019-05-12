/**
 * Project Name:XMAP
 * File Name:DescriptionServiceImpl.java
 * Package Name:cn.java.service.impl
 * Date:2019年4月30日下午1:13:41
 * Copyright (c) 2019, All Rights Reserved.
 *
*/

package cn.java.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.java.dto.Description;
import cn.java.mapper.DescriptionMapper;
import cn.java.service.DescriptionService;

/**
 * Description: <br/>
 * Date: 2019年4月30日 下午1:13:41 <br/>
 * 
 * @author asus
 * @version
 * @see
 */
@Service
public class DescriptionServiceImpl implements DescriptionService {
    @Autowired
    private DescriptionMapper descriptionMapper;

    @Override
    public int deleteByPrimaryKey(Integer id) {

        // Auto-generated method stub
        return 0;
    }

    @Override
    public int insert(Description record) {

        // Auto-generated method stub
        return 0;
    }

    @Override
    public int insertSelective(Description record) {
        System.out.println(record);
        return descriptionMapper.insertSelective(record);
        // Auto-generated method stub

    }

    @Override
    public Description selectByPrimaryKey(Integer id) {

        // Auto-generated method stub
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(Description record) {

        // Auto-generated method stub
        return 0;
    }

    @Override
    public int updateByPrimaryKey(Description record) {

        // Auto-generated method stub
        return 0;
    }

    @Override
    public List<Description> selectSelective(Description record) {

        // Auto-generated method stub
        return descriptionMapper.selectSelective(record);
    }

    @Override
    public Map<String, Object> selectDescription(Description record) {

        // Auto-generated method stub
        return null;
    }

}
