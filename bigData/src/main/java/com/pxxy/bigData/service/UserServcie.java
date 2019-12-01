package com.pxxy.bigData.service;

import java.text.ParseException;
import java.util.List;

import com.pxxy.bigData.bean.AgeVo;
import com.pxxy.bigData.bean.Province;
import com.pxxy.bigData.bean.User;
import com.pxxy.bigData.exception.ServiceException;
import com.pxxy.bigData.exception.SessionNotFoundException;


public interface UserServcie {
	public User selectByUserId(Integer id);
	
	/**
	 *@author 肖恒
	 *Description:查询所有用户
	 *@param str
	 *@return
	 *@throws ParseException
	 */
	public List<User> selectAllUser();

	/**
     *@author 邓志彬
     *Description:校验用户名是否存在
     *@param str
     *@return user
     *@throws ParseException
     */
	public void findByUname(String username)throws ServiceException;
	
	public List<AgeVo> getAgedistribution();
	
	public List<Province> getProvince();
	
	public User findByUname(User user) throws ServiceException;
	
	public void regist(User user) throws SessionNotFoundException;
	
	
	public Boolean updateUser(User user);

	public boolean updatePassword(String username, String newpassword);

	public List<User> getSearch(String keywords);
}
