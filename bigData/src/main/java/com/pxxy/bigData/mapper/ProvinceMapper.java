package com.pxxy.bigData.mapper;

import java.util.List;

import com.pxxy.bigData.bean.Province;

public interface ProvinceMapper {
    int deleteByPrimaryKey(Integer provinceId);

    int insert(Province record);

    int insertSelective(Province record);

    Province selectByPrimaryKey(Integer provinceId);

    int updateByPrimaryKeySelective(Province record);

    int updateByPrimaryKey(Province record);
    
    /**
     *@author 肖恒
     *Description:查询所有省份
     *@param str
     *@return List<Province>
     *@throws ParseException
     */
    List<Province> selectAll();
    
    List<Province> getProvince();
}