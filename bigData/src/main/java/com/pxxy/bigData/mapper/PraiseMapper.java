package com.pxxy.bigData.mapper;

import java.util.List;
import java.util.Map;

import com.pxxy.bigData.bean.Praise;

public interface PraiseMapper {
    int deleteByPrimaryKey(Integer praiseId);

    int insert(Praise record);

    int insertSelective(Praise record);

    Praise selectByPrimaryKey(Integer praiseId);

    int updateByPrimaryKeySelective(Praise record);

    int updateByPrimaryKey(Praise record);

    List<Integer> selectPrimaryKey(Integer userId,Integer courseId);
    
    
	int insertBySelective(Integer userId,Integer courseId);
	
	Map<Integer, Integer> praiseCount(Integer courseId);
}