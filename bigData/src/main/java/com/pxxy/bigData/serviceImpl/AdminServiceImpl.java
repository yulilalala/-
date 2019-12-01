package com.pxxy.bigData.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pxxy.bigData.bean.Admin;
import com.pxxy.bigData.mapper.AdminMapper;
import com.pxxy.bigData.service.AdminService;
@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	private AdminMapper adminMapper;
	@Override
	public Integer selectAdmin(Admin user) {
		Admin admin=adminMapper.selectAdmin(user);
		if(admin.getAdminId()!=null) {
			return 1;
		}
		else {
			return 0;
		}
	}

}
