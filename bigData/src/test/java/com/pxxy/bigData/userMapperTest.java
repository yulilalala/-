package com.pxxy.bigData;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.pxxy.bigData.bean.Admin;
import com.pxxy.bigData.bean.User;
import com.pxxy.bigData.mapper.AdminMapper;
import com.pxxy.bigData.mapper.UserMapper;

/**
 *@author 肖恒
 *Description:
 *@param str
 *@return
 *@throws ParseException
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class userMapperTest {
	@Autowired
	private UserMapper userMapper;
	@Autowired
	private AdminMapper adminMapper;
	
	@Test
	public void testSelectByKey() {
		User user=userMapper.selectByPrimaryKey(1);
		System.out.println(user.getCollege());
		
	}
	@Test
	public void testSelectUser() {
		User user=userMapper.selectUser(1);
		System.out.println(user.getCollege());
		
	}
	
	@Test
	public void testInsertUser() {
		Date date=null;
		try {
            String times = "2016-11-18";
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            date = sdf.parse(times);
            System.out.println(date);
        } catch (ParseException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
		User user=new User();
		user.setProvinceId(2);
		user.setCollege("萍乡学院");
		user.setBirthday(date);
		user.setEmail("11@qq.com");
		user.setUsername("李四");
		user.setPassword("123456");
		user.setGender("M");
		user.setStatus(1);
		Date date1 = new Date();
		user.setCreatetime(date1);
		user.setModifytime(date1);
		userMapper.insert(user);
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
		List<User> userList=userMapper.selectAllUser();
		for (User user : userList) {
			System.out.println(user);
		}
	}
	@Test
	public void selectByUserNameTest() {
		User user=userMapper.selectByUserName("user");
		System.out.println(user);
	}
	@Test
	public void testSelectAdmin() {
		Admin user=new Admin();
		user.setUsername("admin");
		user.setPassword("123456");
		Admin admin=adminMapper.selectAdmin(user);
		System.out.println(admin.toString());
		
	}
	@Test
	public void testupdateUser() {
		User user=new User();
		user.setUserId(1);
		user.setCollege("萍乡学院");
		userMapper.updateByPrimaryKeySelective(user);
	}
}
