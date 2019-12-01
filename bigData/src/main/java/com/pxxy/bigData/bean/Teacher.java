package com.pxxy.bigData.bean;

public class Teacher {
    private Integer teacherId;

    private String teacherCode;

    private String teacherName;
    

	public Integer getTeacherId() {
        return teacherId;
    }

    public void setTeacherId(Integer teacherId) {
        this.teacherId = teacherId;
    }

    public String getTeacherCode() {
        return teacherCode;
    }

    public void setTeacherCode(String teacherCode) {
        this.teacherCode = teacherCode == null ? null : teacherCode.trim();
    }

    public String getTeacherName() {
        return teacherName;
    }

    public void setTeacherName(String teacherName) {
        this.teacherName = teacherName == null ? null : teacherName.trim();
    }

	@Override
	public String toString() {
		return "Teacher [teacherId=" + teacherId + ", teacherCode=" + teacherCode + ", teacherName=" + teacherName
				+ "]";
	}

}