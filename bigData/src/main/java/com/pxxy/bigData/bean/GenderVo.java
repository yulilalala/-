package com.pxxy.bigData.bean;

import java.io.Serializable;

import cn.afterturn.easypoi.excel.annotation.Excel;

public class GenderVo implements Serializable{

	/**
	 * 男女比例分布的类
	 */
	private static final long serialVersionUID = 1L;
	@Excel(name="课程名")
	private String course_name;
	//性别
	@Excel(name="性别")
	private String gender;
	//数量
	@Excel(name="总数")
	private Integer count;
	
	
	
	
	
	public String getCourse_name() {
		return course_name;
	}

	public void setCourse_name(String course_name) {
		this.course_name = course_name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Integer getCount() {
		return count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

	@Override
	public String toString() {
		return "GenderVo [gender=" + gender + ", count=" + count + ", course_name=" + course_name + "]";
	}
	
}
