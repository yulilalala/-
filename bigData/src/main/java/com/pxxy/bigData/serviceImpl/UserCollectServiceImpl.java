package com.pxxy.bigData.serviceImpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pxxy.bigData.bean.Course;
import com.pxxy.bigData.bean.UserCollect;
import com.pxxy.bigData.mapper.CollectionMapper;
import com.pxxy.bigData.mapper.CourseMapper;
import com.pxxy.bigData.mapper.UserCollectMapper;
import com.pxxy.bigData.service.UserCollectService;
@Service
public class UserCollectServiceImpl implements UserCollectService {
	@Autowired
	UserCollectMapper userCMapper;
	@Autowired
	CourseMapper courseMapper;
	@Override
	public List<Course> findCourseInfo(int userId) {
		List<Integer> courseId = userCMapper.selectCourseId(userId);
		
		List<Course> courseList = new ArrayList<Course>();
		
			for (Integer integer : courseId) {
				Course course = courseMapper.selectByPrimaryKey(integer);
				
				courseList.add(course);
			}
		return courseList;
	}

	@Override
	public int addCollect(int userId, int courseId){
		int num1 = 0;
		 List<Integer> primaryKey1 = userCMapper.selectPrimaryKey(userId, courseId);
		if(primaryKey1.isEmpty()==false) {
			for (Integer integer : primaryKey1) {
				userCMapper.deleteByPrimaryKey(integer);
				num1 = -1;
			}
		}else {
			num1 = userCMapper.insertCollectSelective(userId,courseId);
		}

		return num1;
	}

	@Override
	public int removeCollect(int userId, int courseId) {
		int num2 = 0;
		List<Integer> primaryKey2 = userCMapper.selectPrimaryKey(userId, courseId);
		if(primaryKey2.isEmpty()) {
		}else {
			for (Integer integer : primaryKey2) {
				userCMapper.deleteByPrimaryKey(integer);
				num2 = 1;
			}
		}
		return num2;
	}

	@Override
	public int findCollect(int userId, int courseId) {
		List<UserCollect> list=userCMapper.selectById(userId, courseId);
		if(list.size()>0) {
			return 1;
		}
		else {
			return 0;
		}
	}
	

}
