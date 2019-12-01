package com.pxxy.bigData.mapper;

import java.util.List;

import com.pxxy.bigData.bean.UserCollect;

public interface UserCollectMapper {
    int deleteByPrimaryKey(Integer userCollectId);

    int insert(UserCollect record);

    int insertSelective(UserCollect record);

	/* UserCollect selectByPrimaryKey(Integer userCollectId); */

    int updateByPrimaryKeySelective(UserCollect record);

    int updateByPrimaryKey(UserCollect record);
    
    List<Integer> selectPrimaryKey(int userId,int courseId);
	
	int insertCollectSelective(int userId, int courseId);
	
	List<Integer> selectCourseId(int userId);
	
	List<UserCollect> selectById(int userId,int courseId);
}