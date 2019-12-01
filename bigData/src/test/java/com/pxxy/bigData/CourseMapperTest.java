package com.pxxy.bigData;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.pxxy.bigData.bean.Course;
import com.pxxy.bigData.mapper.CourseMapper;

@RunWith(SpringRunner.class)
@SpringBootTest
public class CourseMapperTest {
	@Autowired
	CourseMapper courseMapper;
	@Test
	public void testSelectAllCourse() {
		List<Course> courseList=courseMapper.selectAllCourse();
		for (Course course : courseList) {
			System.out.println(course);
		}
	}
}
