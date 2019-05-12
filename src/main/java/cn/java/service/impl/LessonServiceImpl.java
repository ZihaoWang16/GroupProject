/**
 * Project Name:XMAP
 * File Name:LessonServiceImpl.java
 * Package Name:cn.java.service.impl
 * Date:2019年4月16日上午2:39:09
 * Copyright (c) 2019, All Rights Reserved.
 *
*/

package cn.java.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.java.dto.Lesson;
import cn.java.mapper.LessonMapper;
import cn.java.service.LessonService;

/**
 * Description: <br/>
 * Date: 2019年4月16日 上午2:39:09 <br/>
 * 
 * @author asus
 * @version
 * @see
 */
@Service
public class LessonServiceImpl implements LessonService {
    @Autowired
    LessonMapper lessonMapper;

    @Override
    public int deleteByPrimaryKey(Integer id) {

        // Auto-generated method stub
        return 0;
    }

    @Override
    public int insert(Lesson record) {

        // Auto-generated method stub
        return 0;
    }

    @Override
    public int insertSelective(Lesson record) {

        // Auto-generated method stub
        return 0;
    }

    @Override
    public Lesson selectByPrimaryKey(Integer id) {

        // Auto-generated method stub
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(Lesson record) {

        // Auto-generated method stub
        return 0;
    }

    @Override
    public int updateByPrimaryKey(Lesson record) {

        // Auto-generated method stub
        return 0;
    }

    @Override
    public Lesson selectByWord(String word) {

        return lessonMapper.selectByWord(word);
    }

}
