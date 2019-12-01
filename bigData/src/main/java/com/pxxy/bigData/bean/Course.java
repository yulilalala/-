package com.pxxy.bigData.bean;

import java.util.Date;

public class Course {
    private Integer courseId;

    private String courseName;

    private String courseIntroduction;

    private Integer teacherId;

    private String courseImgUrl;

    private Integer classifyId;

    private Integer videoId;

    private Date uploaddate;

    private Integer praisecount;

    private String classic;
    
    private Teacher teacher;
    
    private Classify classify;
    
    private Video video;
    
    private Integer cnt;
    
    public Praise getPraise() {
		return praise;
	}

	public void setPraise(Praise praise) {
		this.praise = praise;
	}

	private Praise praise;

    public Integer getCnt() {
		return cnt;
	}

	public void setCnt(Integer cnt) {
		this.cnt = cnt;
	}

	@Override
	public String toString() {
		return "Course [courseId=" + courseId + ", courseName=" + courseName + ", courseIntroduction="
				+ courseIntroduction + ", teacherId=" + teacherId + ", courseImgUrl=" + courseImgUrl + ", classifyId="
				+ classifyId + ", videoId=" + videoId + ", uploaddate=" + uploaddate + ", praisecount=" + praisecount
				+ ", classic=" + classic + ", teacher=" + teacher + ", classify=" + classify + ", video=" + video
				+ ", cnt=" + cnt + ", praise=" + praise + "]";
	}

	public Video getVideo() {
		return video;
	}

	public void setVideo(Video video) {
		this.video = video;
	}

	public Classify getClassify() {
		return classify;
	}

	public void setClassify(Classify classify) {
		this.classify = classify;
	}
	

	public Teacher getTeacher() {
		return teacher;
	}

	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}

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
        this.courseName = courseName == null ? null : courseName.trim();
    }

    public String getCourseIntroduction() {
        return courseIntroduction;
    }

    public void setCourseIntroduction(String courseIntroduction) {
        this.courseIntroduction = courseIntroduction == null ? null : courseIntroduction.trim();
    }

    public Integer getTeacherId() {
        return teacherId;
    }

    public void setTeacherId(Integer teacherId) {
        this.teacherId = teacherId;
    }

    public String getCourseImgUrl() {
        return courseImgUrl;
    }

    public void setCourseImgUrl(String courseImgUrl) {
        this.courseImgUrl = courseImgUrl == null ? null : courseImgUrl.trim();
    }

    public Integer getClassifyId() {
        return classifyId;
    }

    public void setClassifyId(Integer classifyId) {
        this.classifyId = classifyId;
    }

    public Integer getVideoId() {
        return videoId;
    }

    public void setVideoId(Integer videoId) {
        this.videoId = videoId;
    }

    public Date getUploaddate() {
        return uploaddate;
    }

    public void setUploaddate(Date uploaddate) {
        this.uploaddate = uploaddate;
    }

    public Integer getPraisecount() {
        return praisecount;
    }

    public void setPraisecount(Integer praisecount) {
        this.praisecount = praisecount;
    }

    public String getClassic() {
        return classic;
    }

    public void setClassic(String classic) {
        this.classic = classic == null ? null : classic.trim();
    }
}