package com.pxxy.bigData.bean;

import java.util.Date;

public class CourseVo {

	private Integer courseId;
	
	private String courseName;
	
	private String courseIntroduction;
	
	private String teacherName;
	
	private String courseImgUrl;
	
	private Integer classifyId;
	
	private String VideoUrl;
	
	private Date uploaddate;
	
	private String classic;
	
	private Integer praisesCount;

	public Integer getCourseId() {
		return courseId;
	}

	public void setCourseId(Integer courseId) {
		this.courseId = courseId;
	}

	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public String getCourseIntroduction() {
		return courseIntroduction;
	}

	public void setCourseIntroduction(String courseIntroduction) {
		this.courseIntroduction = courseIntroduction;
	}

	public String getTeacherName() {
		return teacherName;
	}

	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}

	public String getCourseImgUrl() {
		return courseImgUrl;
	}

	public void setCourseImgUrl(String courseImgUrl) {
		this.courseImgUrl = courseImgUrl;
	}

	public Integer getClassifyId() {
		return classifyId;
	}

	public void setClassifyId(Integer classifyId) {
		this.classifyId = classifyId;
	}

	public String getVideoUrl() {
		return VideoUrl;
	}

	public void setVideoUrl(String videoUrl) {
		VideoUrl = videoUrl;
	}

	public Date getUploaddate() {
		return uploaddate;
	}

	public void setUploaddate(Date uploaddate) {
		this.uploaddate = uploaddate;
	}

	public String getClassic() {
		return classic;
	}

	public void setClassic(String classic) {
		this.classic = classic;
	}

	public Integer getPraisesCount() {
		return praisesCount;
	}

	public void setPraisesCount(Integer praisesCount) {
		this.praisesCount = praisesCount;
	}

	@Override
	public String toString() {
		return "CourseVo [courseId=" + courseId + ", courseName=" + courseName + ", courseIntroduction="
				+ courseIntroduction + ", teacherName=" + teacherName + ", courseImgUrl=" + courseImgUrl
				+ ", classifyId=" + classifyId + ", VideoUrl=" + VideoUrl + ", uploaddate=" + uploaddate + ", classic="
				+ classic + ", praisesCount=" + praisesCount + "]";
	}

	
}
