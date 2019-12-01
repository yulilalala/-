package com.pxxy.bigData;

import java.text.ParseException;
import java.util.Iterator;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.pxxy.bigData.bean.Admin;
import com.pxxy.bigData.bean.User;
import com.pxxy.bigData.service.AdminService;
import com.pxxy.bigData.service.UserServcie;

@RunWith(SpringRunner.class)
@SpringBootTest
public class userServiceTest {
	@Autowired
	UserServcie userService;
	@Autowired
	AdminService adminService;
	@Test
	public void testSelectByUserId() {
		User user=userService.selectByUserId(1);
		System.out.println(user.toString());
	}
	/**
	 *@author 肖恒
	 *Description:测试查询所有用户方法
	 *@param str
	 *@return
	 *@throws ParseException
	 */
	@Test
	public void selectAllUserTest() {
		List<User> userList=userService.selectAllUser();
		for (User user : userList) {
			System.out.println(user);
		}
	}
	
	@Test
	public void selectAdminTest() {
		Admin user=new Admin();
		user.setUsername("admin");
		user.setPassword("123456");
		Integer userList=adminService.selectAdmin(user);
		System.out.println(userList);
	}
	@Test
	public void updateUserTest() {
		User user=new User();
		user.setUserId(1);
		user.setCollege("萍乡学院");
		Boolean b=userService.updateUser(user);
		System.out.println(b);
	}
	@Test
	public void updateUserPasswordTest() {
		User user=new User();
		user.setUsername("user");
		user.setPassword("123456");
		
	}
}
