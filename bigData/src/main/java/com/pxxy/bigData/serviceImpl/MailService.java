package com.pxxy.bigData.serviceImpl;

import java.io.File;
import java.util.List;

import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.pxxy.bigData.bean.User;

@Service("MailService")
public class MailService {
	   
	   Logger logger = LoggerFactory.getLogger(this.getClass());
	   
	   @Autowired
	   private JavaMailSender mailSender;
	  
	
	   /**
	    * 发送一封带有附件的邮件
	    * @param to
	    * @param title  文件名
	    * @param content  文件内容
	    * @param fileList  文件
	    * @throws Exception
	    */
	/*public void sendAttachmentsMail(String to, String title, String content,List<File> fileLsit) throws Exception {
		MimeMessage message = mailSender.createMimeMessage();
		try {
			MimeMessageHelper helper = new MimeMessageHelper(message,true);
			helper.setFrom(from);
			User user = new User();
			to = user.getEmail();
			helper.setTo(to);
			helper.setText(content);
			helper.setSubject(title);
			String fileName = null;
			for (File file : fileLsit) {
				fileName = MimeUtility.encodeText(file.getName(),"UTF-8","B");
				helper.addAttachment(fileName, file);
			}
		}
		catch (Exception e) {
			// TODO: handle exception
		e.printStackTrace();
		}
		mailSender.send(message);
		logger.info("发送成功");
	}*/
	   
	   /**
	    * 发送一封普通的带有验证码的邮件
	    * @param to
	    * @param title
	    * @param content
	    */
	public void sendEmail(String msg, String receiver, String sender, String title) {
		// TODO Auto-generated method stub
		SimpleMailMessage message = new SimpleMailMessage();
		message.setFrom(sender);
		System.out.println(sender);
		message.setTo(receiver);
		message.setText(msg);
		message.setSubject(title);
		mailSender.send(message);
		logger.info("邮件发送成功");
	}
}
