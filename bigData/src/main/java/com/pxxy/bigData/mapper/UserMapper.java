package com.pxxy.bigData.mapper;

import java.util.List;

import com.pxxy.bigData.bean.User;

public interface UserMapper {
    int deleteByPrimaryKey(Integer userId);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer userId);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    
    /**
     *@author 肖恒
     *Description:查询所有用户
     *@param str
     *@return
     *@throws ParseException
     */
    List<User> selectAllUser();
    
    /**
     *@author 邓志彬
     *Description:通过用户名查询用户
     *@param str
     *@return user
     *@throws ParseException
     */
    User selectByUserName(String username);
    
    User selectUser(Integer userId);
    
    int updateByNameSelective(User record);
    
    List<User> search(String keywords);
}