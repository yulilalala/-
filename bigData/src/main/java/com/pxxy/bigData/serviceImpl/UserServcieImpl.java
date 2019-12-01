package com.pxxy.bigData.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pxxy.bigData.bean.AgeVo;
import com.pxxy.bigData.bean.Province;
import com.pxxy.bigData.bean.User;
import com.pxxy.bigData.exception.ServiceException;
import com.pxxy.bigData.exception.SessionNotFoundException;
import com.pxxy.bigData.mapper.AgeVoMapper;
import com.pxxy.bigData.mapper.ProvinceMapper;
import com.pxxy.bigData.mapper.UserMapper;
import com.pxxy.bigData.service.UserServcie;
import com.pxxy.bigData.utils.MD5Util;

@Service
public class UserServcieImpl implements UserServcie {

	@Autowired
	UserMapper userMapper;
	@Autowired
	AgeVoMapper ageVoMapper;
	@Autowired
	ProvinceMapper provinceMapper;
	
	/**
	 *@author 肖恒
	 *Description:通过Id查询用户信息
	 *@param str
	 *@return user
	 *@throws ParseException
	 */
	@Override
	public User selectByUserId(Integer id) {
		// TODO Auto-generated method stub
		User user=userMapper.selectUser(id);
		return user;
	}

	/**
	 *@author 肖恒
	 *Description:查询所有用户
	 *@param str
	 *@return
	 *@throws ParseException
	 */
	@Override
	public List<User> selectAllUser() {
		// TODO Auto-generated method stub
		List<User> userList=userMapper.selectAllUser();
		return userList;
	}

	 /**
     *@author 邓志彬
     *Description:校验用户名是否存在
     *@param str
     *@return user
     *@throws ParseException
     */
	@Override
	public void findByUname(String username) throws ServiceException {
		// TODO Auto-generated method stub
		if(userMapper.selectByUserName(username)!=null) {
			throw new ServiceException("该用户已经存在!");
		}	
	}
	
	/**
	 *@author 邓志彬
	 *Description: 用户年龄段分布
	 *@param str
	 *@return
	 *@throws ParseException
	 */
	@Override
	public List<AgeVo> getAgedistribution() {
		// TODO Auto-generated method stub
		return ageVoMapper.getAgedistribution();
	}
	@Override
	public List<Province> getProvince() {
		// TODO Auto-generated method stub
		return provinceMapper.getProvince();
	}
	/**
	 * 用户注册
	 * @param user
	 * @throws SessionNotFoundException
	 */
	@Override
	public void regist(User user) throws SessionNotFoundException{
		// TODO Auto-generated method stub
		User u = userMapper.selectByUserName(user.getUsername());
		if(u!=null) {
			throw new SessionNotFoundException("用户名存在");
		}
		String saltPas = MD5Util.generate(user.getPassword());
		user.setPassword(saltPas);
		System.out.println(user);
		userMapper.insert(user);
	}
	/**
	 * 用户登录
	 * @param user
	 * @throws ServiceException
	 */
	@Override
	public User findByUname(User user) throws ServiceException{
		User u =userMapper.selectByUserName(user.getUsername());
		if(u==null) {
			throw new ServiceException("用户在不存在");
		}
		boolean tt = MD5Util.verify(user.getPassword(), u.getPassword());
		
		// TODO Auto-generated method stub
		if(tt==false) {
			throw new ServiceException("密码错误");
		}
		return u;
	}
	
	

	@Override
	public Boolean updateUser(User user) {
		Integer flage=userMapper.updateByPrimaryKeySelective(user);
		if(flage==1) {
			return true;
		}
		else {
			return false;
			
		}
	}
	/**
	 * 用户修改密码
	 * @param loginUserName
	 * @param password
	 * @param newpassword
	 * @return
	 */
	@Override
	public boolean updatePassword(String username, String newpassword) {
		// TODO Auto-generated method stub
		User user = userMapper.selectByUserName(username);
		if(user!=null) {
			String password = MD5Util.generate(newpassword);
				user.setPassword(password);
				if(userMapper.updateByPrimaryKeySelective(user)>0) {
					return true;
				}
			}
		return false;
	}

	@Override
	public List<User> getSearch(String keywords) {
		List<User> users=userMapper.search(keywords);
		return users;
	}
}
