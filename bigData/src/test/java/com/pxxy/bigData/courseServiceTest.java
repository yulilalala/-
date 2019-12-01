package com.pxxy.bigData;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.pxxy.bigData.bean.Course;
import com.pxxy.bigData.service.CourseService;

@RunWith(SpringRunner.class)
@SpringBootTest
public class courseServiceTest {
	@Autowired
	CourseService courseService;
	@Test
	public void testSelectAllCourse() {
		List<Course> courseList=courseService.selectAllCourse();
		for (Course course : courseList) {
			System.out.println(course.getClassifyId());
		}
	}
}
