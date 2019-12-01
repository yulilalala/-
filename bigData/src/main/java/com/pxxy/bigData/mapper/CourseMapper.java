package com.pxxy.bigData.mapper;

import java.util.List;

import com.pxxy.bigData.bean.Course;

public interface CourseMapper {
    int deleteByPrimaryKey(Integer courseId);

    int insert(Course record);

    int insertSelective(Course record);

    Course selectByPrimaryKey(Integer courseId);

    int updateByPrimaryKeySelective(Course record);

    int updateByPrimaryKey(Course record);
    
    /**
     *@author 肖恒
     *Description:查询所有课程
     *@param str
     *@return
     *@throws ParseException
     */
    List<Course> selectAllCourse();
    
    /**
     *@author 邓志彬
     *Description: 查询经典课程
     *@param str
     *@return course
     *@throws ParseException
     */
    List<Course> findClassic();
    
    List<Course> getPopular();

	Course getCourseInfo(Integer id);

	Course getGet(String courseName);
	
	List<Course> getClassify(Integer classifyId);
	
	List<Course> search(String input);
	
	List<Integer> selectTeacherId(String input);
	
	List<Course> selectByTeacherId(Integer teacherId);
	
	
}