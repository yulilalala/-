package com.pxxy.bigData.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pxxy.bigData.config.Msg;
import com.pxxy.bigData.service.CollectionService;
@Controller
@RequestMapping("/collection")
public class CollectionController {
	@Autowired
	CollectionService collectionService;
	
	/**
	* @Title: courseInfo
	* @Description: 查看课程详情并增加课程点击次数方法
	* @param @param userId
	* @param @param courseId
	* @param @return    参数
	* @return Msg    返回类型
	* @throws
	*/
	@RequestMapping("/courseInfo")
	@ResponseBody
	public Msg courseInfo(@RequestParam(value = "userId") Integer userId,
			@RequestParam(value = "courseId") Integer courseId) {
		
		Integer flage = collectionService.addCollection(userId, courseId);
		if(flage==1) {
			return Msg.success();	
		}
		else {
			return Msg.fail();
		}
	}
}
