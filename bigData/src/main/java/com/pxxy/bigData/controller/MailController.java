package com.pxxy.bigData.controller;

import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pxxy.bigData.serviceImpl.MailService;

@Controller
public class MailController {
	//获取email的发送端用户名
	 @Value("${spring.mail.username}")
	//接收端用户
	 private String from;
	@Autowired
	private MailService mailService;
	
	/**
	 * 通过email的方式发送验证码，验证码有随机数组成并且验证码的有效时间为60s
	 * @param email 
	 * @param request
	 * @param session
	 * @param checkCode
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/getCheckCode")
	@ResponseBody
	public String getCheckCode(String email, HttpServletRequest request,HttpSession session) throws Exception{
		session.setMaxInactiveInterval(1*60);
		String checkCode = String.valueOf(new Random().nextInt(899999)+100000);
		String msg = "您的注册码为"+checkCode;
		String receiver = email;
		String sender = from;
		String title="";
		request.getSession().setAttribute("checkCode", checkCode);
		try {
			mailService.sendEmail(msg,receiver,sender,title);
		}
		catch (Exception e) {
			// TODO: handle exception
			return "";
		}
		return checkCode;
	}
}
