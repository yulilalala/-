package com.pxxy.bigData;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.pxxy.bigData.bean.Teacher;
import com.pxxy.bigData.bean.TeacherCount;
import com.pxxy.bigData.mapper.TeacherCountMapper;

@RunWith(SpringRunner.class)
@SpringBootTest
public class teacherMapperTest {
	@Autowired
	TeacherCountMapper teacherCountMapper;
	@Test
	 public void testSelectTeacherByCount() {
		 List<TeacherCount> teacherList =teacherCountMapper.selectTeacherByCount();
		 for (TeacherCount teacherCount : teacherList) {
			System.out.println(teacherCount);
		}
	 }
}
