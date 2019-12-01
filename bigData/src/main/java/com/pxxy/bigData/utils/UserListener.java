package com.pxxy.bigData.utils;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
@WebListener
public class UserListener implements HttpSessionAttributeListener{
	public static int online = 0;
	@Override
	public void attributeAdded(HttpSessionBindingEvent se) {
		if("user".equals(se.getName())){
			System.out.println("有人登陆了");
			online++;
		}
	}
	
	@Override
	public void attributeRemoved(HttpSessionBindingEvent se) {
		if("user".equals(se.getName())){
			System.out.println("有人登出或断线了");
			online--;
		}
	}
}
