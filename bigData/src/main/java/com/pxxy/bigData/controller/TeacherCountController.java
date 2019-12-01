package com.pxxy.bigData.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pxxy.bigData.bean.TeacherCount;
import com.pxxy.bigData.config.Msg;
import com.pxxy.bigData.service.TeacherCountService;

@Controller
public class TeacherCountController {
	@Autowired
	TeacherCountService teacherCountService;
	/**
	 *@author 肖恒
	 *
	 *Body = {"code":100,"msg":"处理成功!",
	 *"map":{"countList"
	 *:[{"count":13,"teacher_name":"陈诚"},
	 *Description:老师排名
	 *@param str
	 *@return list<TeacherCount>
	 *@throws ParseException
	 */
	@ResponseBody
	@RequestMapping("/countTeacher")
	public Msg countTeacher(Model model) {
		List<TeacherCount> list=teacherCountService.selectTeacherByCount();
		if(list.size()>0) {
			return Msg.success().add("countList", list);
		}
		return Msg.fail().add("msg", "获取信息失败!");
	}
	@RequestMapping("/teachaerRankHtml")
	public String countTeacher() {
		return "admin/teacherRank";
	}
}
