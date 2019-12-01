package com.pxxy.bigData.bean;

import cn.afterturn.easypoi.excel.annotation.Excel;

public class TeacherCount {
	@Excel(name="教师名")
	private String teacher_name;

	@Excel(name = "点击数")
	private Integer count;
	
	public Integer getCount() {
		return count;
	}

	public String getTeacher_name() {
		return teacher_name;
	}

	public void setTeacher_name(String teacher_name) {
		this.teacher_name = teacher_name;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

	@Override
	public String toString() {
		return "TeacherCount [count=" + count + ", teacher_name=" + teacher_name + "]";
	}

}
