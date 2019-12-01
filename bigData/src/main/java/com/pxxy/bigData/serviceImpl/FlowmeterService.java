package com.pxxy.bigData.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pxxy.bigData.bean.Flowmeter;
import com.pxxy.bigData.bean.OnlineVo;
import com.pxxy.bigData.mapper.FlowmeterMapper;
import com.pxxy.bigData.mapper.OnlineVoMapper;

@Service
public class FlowmeterService {
		
	@Autowired
	FlowmeterMapper flowmeterMapper;
	
	@Autowired
	OnlineVoMapper onlineVoMapper;

	public void insert(Flowmeter flowmeter) {
		// TODO Auto-generated method stub
		this.flowmeterMapper.insert(flowmeter);
	}

	public List<OnlineVo> selectOnlineByHour() {
		// TODO Auto-generated method stub
		
		return onlineVoMapper.selectOnlineByHour();
	}

	public List<OnlineVo> selectOnlineByDaily() {
		// TODO Auto-generated method stub
		return onlineVoMapper.selectOnlineByDaily();
	}

	public List<OnlineVo> selectOnlineByWeek() {
		// TODO Auto-generated method stub
		return onlineVoMapper.selectOnlineByWeek();
	}

	public List<OnlineVo> selectOnlineByMonth() {
		// TODO Auto-generated method stub
		return onlineVoMapper.selectOnlineByMonth();
	}	
}
