package com.pxxy.bigData.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pxxy.bigData.config.Msg;
import com.pxxy.bigData.bean.PopularVo;
import com.pxxy.bigData.serviceImpl.PopularVoService;
/**
 * 受欢迎课程控制类
 * @author xzsoldier
 *
 */
@Controller
public class PopularVoController {
	
	
	@Autowired
	private PopularVoService popularVoService;
	
	/**
	 * Body = {"code":100,"msg":"处理成功!",
	 * "extend":{
	 * "vos"
	 * :[{"course_id":10,
	 * "course_name":"Python基础入门",
	 * "cnt":11,
	 * "course_img_url":"Python基础入门1.png"}
	 * ,{"course_id":2,
	 * "course_name":"微信小程序开发","
	 * cnt":4,
	 * "course_img_url":"微信小程序开发S.png"}
	 * 显示数据库中点击数最多的十门课程进行显示
	 * @return vos
	 */
	@RequestMapping("/popularVoService")
	@ResponseBody
	public Msg selectTop10Popular() {
		List<PopularVo> vos = popularVoService.selectTop10Popular();
		return Msg.success().add("vos", vos);
	}
	
	/**
	 *@author 邓志彬
	 *Description:前20的课程
	 *Body = {"code":100,"msg":"处理成功!",
	 *"map":{"vos":
	 *[{"course_id":10,
	 *"course_name":"Python基础入门",
	 *"cnt":14,
	 *"course_img_url":"Python基础入门1.png"}
	 *@param str
	 *@return
	 *@throws ParseException
	 */
	@RequestMapping("/popularVoServiceTOP20")
	@ResponseBody
	public Msg selectTop20Popular() {
		List<PopularVo> vos = popularVoService.selectTop20Popular();
		return Msg.success().add("vos", vos);
	}
}
