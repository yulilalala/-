package com.pxxy.bigData.config;
/**
 * 通用的返回类
 * @author asus
 *
 */

import java.util.HashMap;
import java.util.Map;

import com.pxxy.bigData.utils.UserListener;

public class Msg {
	//状态码
	private int code;
	//提示信息
	private String msg;
	//用户返回给浏览器的数据
	private Map<String, Object> map=new HashMap<String, Object>();
	
	public static Msg success() {
		Msg result=new Msg();
		result.setCode(100);
		result.setMsg("处理成功!");
		return result;
	}
	
	public static Msg fail() {
		Msg result=new Msg();
		result.setCode(200);
		result.setMsg("处理失败!");
		return result;
	}
	
	public Msg add(String key,Object value) {
		this.getMap().put(key, value);
		return this;
	}
	
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}

	public Map<String, Object> getMap() {
		return map;
	}

	public void setMap(Map<String, Object> map) {
		this.map = map;
	}
	public static Msg online(String key,Object value) {
		Msg result = new Msg();
		result.setMsg("当前在线人数：" + UserListener.online + "人");
		result.getMap().put(key, value);
		return result;
		
	}

	
	
}
