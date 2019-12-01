package com.pxxy.bigData.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pxxy.bigData.mapper.PraiseMapper;
import com.pxxy.bigData.service.PraiseService;

@Service
public class PraiseServiceImpl implements PraiseService {
	@Autowired
	PraiseMapper praiseMapper;

	@Override
	public int addPraise(Integer userId, Integer courseId) {
		int num = 0;
		List<Integer> praiseId = praiseMapper.selectPrimaryKey(userId, courseId);
		if (praiseId.isEmpty() == true) {
			num = praiseMapper.insertBySelective(userId, courseId);
		} else if (praiseId.isEmpty() == false) {
			for (Integer integer : praiseId) {
				praiseMapper.deleteByPrimaryKey(integer);
				num = -1;
			}
		}
		return num;
	}

	
	@Override
	public Map<Integer, Integer> findPraiseCount(Integer courseId) {
		return praiseMapper.praiseCount(courseId);	
	}
}
