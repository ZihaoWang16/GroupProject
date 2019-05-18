package cn.java.mapper;

import java.util.List;

import cn.java.dto.Lesson;

public interface LessonMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Lesson record);

    int insertSelective(Lesson record);

    Lesson selectByPrimaryKey(Integer id);

    List<Lesson> selectByWord(String word);

    List<Lesson> selectSelective(Lesson record);

    int updateByPrimaryKeySelective(Lesson record);

    int updateByPrimaryKey(Lesson record);
}