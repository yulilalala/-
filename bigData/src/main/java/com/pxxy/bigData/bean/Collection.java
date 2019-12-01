package com.pxxy.bigData.bean;

import java.util.Date;

public class Collection {
    private Integer colloctionId;

    private Integer userId;

    private Integer courseId;

    private Date createtime;

    private Date endtime;

    public Integer getColloctionId() {
        return colloctionId;
    }

    public void setColloctionId(Integer colloctionId) {
        this.colloctionId = colloctionId;
    }

    public Integer getUserId() {
        return userId;
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

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public Date getEndtime() {
        return endtime;
    }

    public void setEndtime(Date endtime) {
        this.endtime = endtime;
    }
}