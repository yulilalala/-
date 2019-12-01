package com.pxxy.bigData.mapper;

import java.util.List;

import com.pxxy.bigData.bean.TeacherCount;


public interface TeacherCountMapper {

    /**
     *@author 肖恒
     *Description:查询老师人数
     *@param str
     *@return teacher
     *@throws ParseException
     */
    List<TeacherCount> selectTeacherByCount();
}
