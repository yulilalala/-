package com.pxxy.bigData.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pxxy.bigData.bean.Course;
import com.pxxy.bigData.config.Msg;
import com.pxxy.bigData.service.UserCollectService;

/**
 * @ClassName: UserCollectController
 * @Description: 收藏功能类
 * @author 曾华
 * @date 2019年6月12日
 *
 */
@Controller
@RequestMapping("/userCollect")
public class UserCollectController {
	@Autowired
	UserCollectService service;

	
	/**
	* @Title: userCollect
	* @Description: 查看收藏方法
	* @param @param userId
	* @param @return    参数
	* @return Msg    返回类型
	* @throws
	*/
	@RequestMapping("/collectInfo")
	@ResponseBody
	public Msg userCollect(@RequestParam(value = "userId") Integer userId) {

		try {
			List<Course> courseList = service.findCourseInfo(userId);
			if (courseList.isEmpty()==true) {
				return Msg.fail();
			}else {
				return Msg.success().add("msg", courseList);
			}
			
		} catch (Exception e) {
			return Msg.fail().add("msg", e.toString());
		}
	}

	
	/**
	* @Title: addCollect
	* @Description: 增加收藏方法
	* @param @param userId
	* Body = {"code":100,"msg":"处理成功!",
	* "map":{"msg":"收藏成功"}}
	* @param @param courseId
	* @param @return    参数
	* @return Msg    返回类型
	* @throws
	*/
	@RequestMapping("/addCollect")
	@ResponseBody
	public Msg addCollect(@RequestParam(value = "userId") int userId, 
			@RequestParam(value = "courseId") int courseId) {
		Msg msg = new Msg();
		try {
			int number = service.addCollect(userId, courseId);
			if (number == 1) {
				return Msg.success().add("msg", "收藏成功");
			} else if (number == -1) {
				return Msg.fail().add("msg", "取消收藏");
			}
		} catch (Exception e) {
			return Msg.fail().add("msg", e.toString());
		}
		return msg;
	}

	
	/**
	* @Title: removeCollect
	* @Description: 取消收藏方法
	*    Body = {"code":100,"msg":"处理成功!","map":{"msg":"取消收藏成功"}}
	* @param @param userId
	* @param @param courseId
	* @param @return    参数
	* @return Msg    返回类型
	* @throws
	*/
	@RequestMapping("/removeCollect")
	@ResponseBody
	public Msg removeCollect(@RequestParam(value = "userId") int userId, 
			@RequestParam(value = "courseId") int courseId) {
		Msg msg = new Msg();
		try {
			int number = service.removeCollect(userId, courseId);
			if (number == 1) {
				return Msg.success().add("msg", "取消收藏成功");
			}
		} catch (Exception e) {
			return Msg.fail().add("msg", e.toString());
		}
		return msg;
	}
	@ResponseBody
	@RequestMapping("/find")
	public Msg findCollection(@RequestParam(value = "userId") int userId, 
			@RequestParam(value = "courseId") int courseId) {
			Integer flage=service.findCollect(userId, courseId);
			if(flage==1) {
				return Msg.success();
			}
			else {
				return Msg.fail();
			}
			
		
	}
}
