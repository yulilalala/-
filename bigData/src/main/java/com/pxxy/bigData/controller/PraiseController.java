package com.pxxy.bigData.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pxxy.bigData.config.Msg;
import com.pxxy.bigData.service.PraiseService;

/**
* @ClassName: PraiseController
* @Description: 点赞功能类
* @author 曾华
* @date 2019年6月12日
*
*/
@Controller
@RequestMapping("/praise")
public class PraiseController {
	@Autowired
	PraiseService praiseService;

	/**
	* @Title: addPraise
	* @Description: 增加点赞，已点赞再点取消原点赞
	* Body = {"code":100,"msg":"处理成功!","map":{"msg":"点赞成功"}}
	* @param @param userId
	* @param @param courseId
	* @param @return    参数
	* @return Msg    返回类型
	* @throws
	*/
	@RequestMapping("/addPraise")
	@ResponseBody
	public Msg addPraise(@RequestParam("userId") Integer userId, @RequestParam("courseId") Integer courseId) {
		Msg msg = new Msg();
		try {
			int addPraise = praiseService.addPraise(userId, courseId);
			if (addPraise == 1) {
				return Msg.success().add("msg", "点赞成功");

			} else if (addPraise == -1) {
				return Msg.fail().add("msg", "取消点赞");
			}
		} catch (Exception e) {
			return Msg.fail().add("msg", e.toString());
		}
		return msg;
	}
}
