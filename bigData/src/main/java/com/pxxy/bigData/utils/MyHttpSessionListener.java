package com.pxxy.bigData.utils;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
//@WebListener
public class MyHttpSessionListener implements HttpSessionListener{
	
	public static int online = 0;
  
    /* Session创建事件 */
	public void sessionCreated(HttpSessionEvent se) {
		online++;
		System.out.println("有人加入了，activeSession:" + online);
	}

	/* Session失效事件 */
	public void sessionDestroyed(HttpSessionEvent se) {
		online--;
		System.out.println("有人退出了，activeSession:" + online);

	}	
}
