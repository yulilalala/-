package com.pxxy.bigData.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pxxy.bigData.bean.Admin;
import com.pxxy.bigData.config.Msg;
import com.pxxy.bigData.service.AdminService;

@RequestMapping("/admin")
@Controller
public class AdminController {
	@Autowired
	AdminService adminService;
	@ResponseBody
	@RequestMapping("/login")
	public Msg adminLogin(Admin user ,@RequestParam("password")String username,
			@RequestParam("password")String password, HttpSession session) {
		Integer flage=adminService.selectAdmin(user);
		if(flage==1) {
			session.setAttribute("user", user);
			return Msg.success();
		}
		else {
			return Msg.fail().add("msg", "用户名或密码错误");
		}
	}  
	@RequestMapping("/loginOut")
	public String  adminLoginOut(HttpSession session) {
		session.invalidate();
		return "admin/login1";
	}
}
