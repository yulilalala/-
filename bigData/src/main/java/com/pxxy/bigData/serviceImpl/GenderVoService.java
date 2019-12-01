package com.pxxy.bigData.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pxxy.bigData.bean.GenderVo;
import com.pxxy.bigData.mapper.GenderVoMapper;
/**
 * 性别显示的业务层
 * @author xzsoldier
 *
 */
@Service
public class GenderVoService {
	
	@Autowired
	private GenderVoMapper genderVoMapper;
	
	/**
	 * 查出用户表的男女分布数量
	 * @return
	 */
	public List<GenderVo> selectGender() {
		// TODO Auto-generated method stub
		 
		return genderVoMapper.selectGender();
	}

	public List<GenderVo> courseGender(Integer courseId) {
		// TODO Auto-generated method stub
		return genderVoMapper.courseGender(courseId);
	}

}
