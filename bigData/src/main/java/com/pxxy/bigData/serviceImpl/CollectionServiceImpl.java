package com.pxxy.bigData.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pxxy.bigData.mapper.CollectionMapper;
import com.pxxy.bigData.service.CollectionService;
@Service
public class CollectionServiceImpl implements CollectionService {
	@Autowired
	CollectionMapper collectionMapper;
	@Override
	public Integer addCollection(Integer userId, Integer courseId) {
		int num = collectionMapper.insertBySelective(userId, courseId);
		return num;
	}

}
