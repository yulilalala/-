package com.pxxy.bigData.bean;

public class Classify {
    private Integer classifyId;

    private Integer classifyCode;

    private String classifyName;

    public Integer getClassifyId() {
        return classifyId;
    }

    @Override
	public String toString() {
		return "Classify [classifyId=" + classifyId + ", classifyCode=" + classifyCode + ", classifyName="
				+ classifyName + "]";
	}

	public void setClassifyId(Integer classifyId) {
        this.classifyId = classifyId;
    }

    public Integer getClassifyCode() {
        return classifyCode;
    }

    public void setClassifyCode(Integer classifyCode) {
        this.classifyCode = classifyCode;
    }

    public String getClassifyName() {
        return classifyName;
    }

    public void setClassifyName(String classifyName) {
        this.classifyName = classifyName == null ? null : classifyName.trim();
    }
}