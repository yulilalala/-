package com.pxxy.bigData.mapper;

import com.pxxy.bigData.bean.Flowmeter;

public interface FlowmeterMapper {
    int deleteByPrimaryKey(Integer 


flowmeterId);

    int insert(Flowmeter record);

    int insertSelective(Flowmeter record);

    Flowmeter selectByPrimaryKey(Integer 


flowmeterId);

    int updateByPrimaryKeySelective(Flowmeter record);

    int updateByPrimaryKey(Flowmeter record);
}