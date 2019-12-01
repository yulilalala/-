package com.pxxy.bigData.mapper;

import java.util.List;

import com.pxxy.bigData.bean.Course;
import com.pxxy.bigData.bean.GenderVo;

public interface GenderVoMapper {
	
	List<GenderVo> selectGender();

	List<GenderVo> courseGender(Integer courseId);

	List<Course> getCourseGender();

	List<GenderVo> getCourseGenders();
}
