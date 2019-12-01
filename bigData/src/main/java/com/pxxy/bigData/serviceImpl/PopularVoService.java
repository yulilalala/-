package com.pxxy.bigData.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pxxy.bigData.bean.PopularVo;
import com.pxxy.bigData.mapper.PopularVoMapper;
/**
 * 受欢迎课程的业务层信息
 * @author xzsoldier
 *
 */
@Service
public class PopularVoService {
	
	@Autowired
	private PopularVoMapper voMapper;
	
	/**
	 * 调出表里最受欢迎的十门课程
	 * @return
	 */
	public List<PopularVo> selectTop10Popular() {
		// TODO Auto-generated method stub
		return voMapper.selectTop10Popular();
	}

	public List<PopularVo> selectTop20Popular() {
		// TODO Auto-generated method stub
		return voMapper.selectTop20Popular();
	}

	public List<PopularVo> selectPopular() {
		// TODO Auto-generated method stub
		return voMapper.selectPopular();
	}
}
