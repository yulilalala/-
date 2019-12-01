package com.pxxy.bigData.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pxxy.bigData.bean.Course;
import com.pxxy.bigData.bean.CourseVo;
import com.pxxy.bigData.mapper.CourseVoMapper;

@Service
public class CourseVoService {
	
	@Autowired
	CourseVoMapper courseVoMapper;

	public CourseVo getCourseInfo(Integer courseId) {
		// TODO Auto-generated method stub
		return (CourseVo) courseVoMapper.getCourseInfo(courseId);
	}
}
