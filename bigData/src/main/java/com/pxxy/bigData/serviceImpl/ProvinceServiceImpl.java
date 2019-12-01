package com.pxxy.bigData.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pxxy.bigData.bean.Province;
import com.pxxy.bigData.mapper.ProvinceMapper;
import com.pxxy.bigData.service.ProvinceService;
@Service
public class ProvinceServiceImpl implements ProvinceService {
	@Autowired
	ProvinceMapper provinceMapper;	
	/**
	 *@author 肖恒
	 *Description:查询所有省份信息
	 *@param str
	 *@return List<Province>
	 *@throws ParseException
	 */
	@Override
	public List<Province> selectAll() {
		List<Province> provinces=provinceMapper.selectAll();
		return provinces;
	}

}
