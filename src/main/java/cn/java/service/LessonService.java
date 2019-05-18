/**
 * Project Name:XMAP
 * File Name:LessonService.java
 * Package Name:cn.java.service.impl
 * Date:2019年4月16日上午2:39:30
 * Copyright (c) 2019, All Rights Reserved.
 *
*/

package cn.java.service;

import java.util.List;

import cn.java.dto.Lesson;

/**
 * Description: <br/>
 * Date: 2019年4月16日 上午2:39:30 <br/>
 * 
 * @author asus
 * @version
 * @see
 */
public interface LessonService {
    int deleteByPrimaryKey(Integer id);

    int insert(Lesson record);

    int insertSelective(Lesson record);

    Lesson selectByPrimaryKey(Integer id);

    List<Lesson> selectByWord(String word);

    int updateByPrimaryKeySelective(Lesson record);

    int updateByPrimaryKey(Lesson record);
}
