package com.pxxy.bigData.serviceImpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pxxy.bigData.bean.Course;
import com.pxxy.bigData.bean.GenderVo;
import com.pxxy.bigData.exception.ServiceException;
import com.pxxy.bigData.mapper.CollectionMapper;
import com.pxxy.bigData.mapper.CourseMapper;
import com.pxxy.bigData.mapper.GenderVoMapper;
import com.pxxy.bigData.service.CourseService;
@Service
public class CourseServiceImpl implements CourseService {
    @Autowired
	CourseMapper courseMapper;
    @Autowired
    GenderVoMapper genderVoMapper;
    @Autowired
    CollectionMapper collectionMapper;
    /**
     *@author 肖恒
     *Description:查询所有课程
     *@param str
     *@return 课程列表
     *@throws ParseException
     */
    @Override
	public List<Course> selectAllCourse() {
		List<Course> courseList=courseMapper.selectAllCourse();
		return courseList;
	}

	/**
	 *@author 肖恒
	 *Description: 根据数据库的信息，查找出经典课程
	 *@param str
	 *@return list
	 *@throws ParseException
	 */
	@Override
	public List<Course> getClassic() {
		// TODO Auto-generated method stub
		return courseMapper.findClassic();
	}
	@Override
	public List<Course> getCourseGender() {
		// TODO Auto-generated method stub
		return genderVoMapper.getCourseGender();
	}
	@Override
	public Course getCourseInfo(Integer courseId) {
		// TODO Auto-generated method stub	
		return (Course) courseMapper.getCourseInfo(courseId);
		
	}
	@Override
	public List<Course> getSearch(String input) throws ServiceException{
		List<Course> search = new ArrayList<Course>();
	
		List<Course> search1 = courseMapper.search(input);
		for (Course course : search1) {
				search.add(course);
		}
			
		List<Integer> teacherIdList = courseMapper.selectTeacherId(input);
		for (Integer integer : teacherIdList) {
			List<Course> infoList = courseMapper.selectByTeacherId(integer);
			for (Course course: infoList) {
				search.add(course);
				
			}
		}
		return search;
	}
	public List<GenderVo> getCourseVoGender() {
		// TODO Auto-generated method stub
		return genderVoMapper.getCourseGenders();
	}

}
