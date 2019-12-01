package com.pxxy.bigData.mapper;

import com.pxxy.bigData.bean.Collection;

public interface CollectionMapper {
    int deleteByPrimaryKey(Integer colloctionId);

    int insert(Collection record);

    int insertSelective(Collection record);

    Collection selectByPrimaryKey(Integer colloctionId);

    int updateByPrimaryKeySelective(Collection record);

    int updateByPrimaryKey(Collection record);  
    
	int insertBySelective(Integer userId,Integer courseId);
}