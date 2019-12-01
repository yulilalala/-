package com.pxxy.bigData.service;

import java.util.List;
import java.util.Map;

import com.pxxy.bigData.bean.Course;
import com.pxxy.bigData.bean.User;
import com.pxxy.bigData.exception.ServiceException;

public interface UserCollectService {
	List<Course> findCourseInfo(int userId);
	
	int addCollect(int userId,int courseId);
	
	int removeCollect(int userId,int courseId);
	
	int findCollect(int userId,int courseId);
}
