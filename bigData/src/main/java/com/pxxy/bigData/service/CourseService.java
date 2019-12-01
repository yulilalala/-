package com.pxxy.bigData.service;

import java.util.List;

import com.pxxy.bigData.bean.Course;
import com.pxxy.bigData.exception.ServiceException;

public interface CourseService {
	public List<Course> selectAllCourse();
	
	/**
	 * 根据数据库的信息，查找出经典课程
	 * @return list
	 */
	public List<Course> getClassic();
	
	public List<Course> getCourseGender();
	
	Course getCourseInfo(Integer courseId);
	
	public List<Course> getSearch(String input) throws ServiceException;
	
	
}
