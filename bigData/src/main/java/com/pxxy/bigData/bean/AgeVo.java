package com.pxxy.bigData.bean;

import java.io.Serializable;

import cn.afterturn.easypoi.excel.annotation.Excel;

public class AgeVo implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Integer course_id;
	private String course_name;
	@Excel(name="10后")
	private String grade1;
	@Excel(name="00后")
	private String grade2;
	@Excel(name="90后")
	private String grade3;
	@Excel(name="80后")
	private String grade4;
	@Excel(name="70后")
	private String grade5;


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

	
	
	public String getGrade1() {
		return grade1;
	}

	public void setGrade1(String grade1) {
		this.grade1 = grade1;
	}

	public String getGrade2() {
		return grade2;
	}

	public void setGrade2(String grade2) {
		this.grade2 = grade2;
	}

	public String getGrade3() {
		return grade3;
	}

	public void setGrade3(String grade3) {
		this.grade3 = grade3;
	}

	public String getGrade4() {
		return grade4;
	}

	public void setGrade4(String grade4) {
		this.grade4 = grade4;
	}

	public String getGrade5() {
		return grade5;
	}

	public void setGrade5(String grade5) {
		this.grade5 = grade5;
	}

	@Override
	public String toString() {
		return "AgeVo [course_id=" + course_id + ", course_name=" + course_name + ", grade1=" + grade1 + ", grade2="
				+ grade2 + ", grade3=" + grade3 + ", grade4=" + grade4 + ", grade5=" + grade5 + "]";
	}

	

}
