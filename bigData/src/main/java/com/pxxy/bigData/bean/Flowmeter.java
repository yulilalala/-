package com.pxxy.bigData.bean;

import java.util.Date;

public class Flowmeter {
    private Integer flowmeterId;

    private Integer userId;

    private Date logintime;

    private Date exittime;
    

    public Integer getFlowmeterId() {
		return flowmeterId;
	}

	public void setFlowmeterId(Integer flowmeterId) {
		this.flowmeterId = flowmeterId;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Date getLogintime() {
        return logintime;
    }

    public void setLogintime(Date logintime) {
        this.logintime = logintime;
    }

    public Date getExittime() {
        return exittime;
    }

    public void setExittime(Date exittime) {
        this.exittime = exittime;
    }
}