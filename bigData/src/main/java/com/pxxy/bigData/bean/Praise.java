package com.pxxy.bigData.bean;

public class Praise {
    private Integer praiseId;

    private Integer userId;

    private Integer courseId;

    public Integer getPraiseId() {
        return praiseId;
    }

    public void setPraiseId(Integer praiseId) {
        this.praiseId = praiseId;
    }

    public Integer getUserId() {
        return userId;
    }

    @Override
	public String toString() {
		return "Praise [praiseId=" + praiseId + ", userId=" + userId + ", courseId=" + courseId + "]";
	}

	public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getCourseId() {
        return courseId;
    }

    public void setCourseId(Integer courseId) {
        this.courseId = courseId;
    }
}