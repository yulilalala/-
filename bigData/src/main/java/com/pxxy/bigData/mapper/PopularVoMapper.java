package com.pxxy.bigData.mapper;

import java.util.List;

import com.pxxy.bigData.bean.PopularVo;

public interface PopularVoMapper {
	//前十点击数的课程
 	List<PopularVo> selectTop10Popular();
 	//前二十带图片
	List<PopularVo> selectTop20Popular();
	
	List<PopularVo> selectPopular();
}
