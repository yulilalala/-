package com.pxxy.bigData.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pxxy.bigData.bean.TeacherCount;
import com.pxxy.bigData.mapper.TeacherCountMapper;
import com.pxxy.bigData.service.TeacherCountService;
@Service
public class TeacherCountServiceImpl implements TeacherCountService {
	@Autowired
	TeacherCountMapper teacherCountMapper;
	@Override
	public List<TeacherCount> selectTeacherByCount() {
		List<TeacherCount> list=teacherCountMapper.selectTeacherByCount();
		return list;
	}

}
