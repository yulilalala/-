package com.pxxy.bigData.service;

import java.util.Map;

public interface PraiseService {
	int addPraise(Integer userId,Integer courseId);
	
	Map<Integer, Integer> findPraiseCount(Integer courseId);
}
