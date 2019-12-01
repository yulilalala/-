package com.pxxy.bigData.bean;

import java.io.Serializable;
import java.util.Date;

import cn.afterturn.easypoi.excel.annotation.Excel;

public class OnlineVo implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Excel(name="小时在线")
	private String hour;
	@Excel(name="每天名")
	private String day;
	@Excel(name="每周名")
	private String week;
	@Excel(name="每月名")
	private String month;
	@Excel(name="在线人数")
	private int count;
	public String getHour() {
		return hour;
	}

	public void setHour(String hour) {
		this.hour = hour;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	
	public OnlineVo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public String getWeek() {
		return week;
	}

	public void setWeek(String week) {
		this.week = week;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	@Override
	public String toString() {
		return "OnlineVo [hour=" + hour + ", count=" + count + ", day=" + day + ", week=" + week + ", month=" + month
				+ "]";
	}
}
