package com.pxxy.bigData.bean;

import java.io.Serializable;

import cn.afterturn.easypoi.excel.annotation.Excel;
/**
 * 受欢迎的课程类
 * @author xzsoldier
 *
 */
public class PopularVo implements Serializable{
	
	private static final long serialVersionUID = 5454744131926479775L;
	//课程id
	private Integer course_id;
	//课程名字
	@Excel(name="课程名")
	private String course_name;
	//点击数
	@Excel(name="点击数")
	private Integer cnt;
	
	private String course_img_url;
	
	
	public String getCourse_img_url() {
		return course_img_url;
	}
	public void setCourse_img_url(String course_img_url) {
		this.course_img_url = course_img_url;
	}
	public Integer getCourse_id() {
		return course_id;
	}
	public void setCourse_id(Integer course_id) {
		this.course_id = course_id;
	}
	public String getCourse_name() {
		return course_name;
	}
	public void setCourse_name(String course_name) {
		this.course_name = course_name;
	}
	public Integer getCnt() {
		return cnt;
	}
	public void setCnt(Integer cnt) {
		this.cnt = cnt;
	}
	@Override
	public String toString() {
		return "PopularVo [course_id=" + course_id + ", course_name=" + course_name + ", cnt=" + cnt
				+ ", course_img_url=" + course_img_url + "]";
	}

}
