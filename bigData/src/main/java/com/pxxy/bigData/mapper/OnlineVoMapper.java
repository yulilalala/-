package com.pxxy.bigData.mapper;

import java.util.List;

import com.pxxy.bigData.bean.OnlineVo;

public interface OnlineVoMapper {
	

	List<OnlineVo> selectOnlineByHour();

	List<OnlineVo> selectOnlineByDaily();

	List<OnlineVo> selectOnlineByWeek();

	List<OnlineVo> selectOnlineByMonth();

	
}
