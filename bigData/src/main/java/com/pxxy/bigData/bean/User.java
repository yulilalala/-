package com.pxxy.bigData.bean;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class User {
    private Integer userId;

    private String username;

    private String password;

    private String email;

    private String gender;

    private Integer provinceId;

    private Integer status;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date birthday;

    private Date createtime;

    private Date modifytime;

    private String college;
    
    private Province province;

    public Integer getUserId() {
        return userId;
    }

    public Province getProvince() {
		return province;
	}

	public void setProvince(Province province) {
		this.province = province;
	}

	public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender == null ? null : gender.trim();
    }

    public Integer getProvinceId() {
        return provinceId;
    }

    public void setProvinceId(Integer provinceId) {
        this.provinceId = provinceId;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public Date getModifytime() {
        return modifytime;
    }

    public void setModifytime(Date modifytime) {
        this.modifytime = modifytime;
    }

    public String getCollege() {
        return college;
    }

    public void setCollege(String college) {
        this.college = college == null ? null : college.trim();
    }

	@Override
	public String toString() {
		return "User [userId=" + userId + ", username=" + username + ", password=" + password + ", email=" + email
				+ ", gender=" + gender + ", provinceId=" + provinceId + ", status=" + status + ", birthday=" + birthday
				+ ", createtime=" + createtime + ", modifytime=" + modifytime + ", college=" + college + ", province="
				+ province + "]";
	}

	
    
}