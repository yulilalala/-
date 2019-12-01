package com.pxxy.bigData.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pxxy.bigData.bean.Course;
import com.pxxy.bigData.mapper.ClassifyMapper;
import com.pxxy.bigData.mapper.CourseMapper;

@Service
public class ClassifyService {
	
	@Autowired
	CourseMapper courseMapper;
	
	public List<Course> getClassify(Integer classifyId) {
		// TODO Auto-generated method stub
		return courseMapper.getClassify(classifyId);
	}
}
