package com.pxxy.bigData.bean;

public class Video {
    private Integer videoId;

    private Integer videoCode;

    private String videoUrl;

    public Integer getVideoId() {
        return videoId;
    }

    @Override
	public String toString() {
		return "Video [videoId=" + videoId + ", videoCode=" + videoCode + ", videoUrl=" + videoUrl + "]";
	}

	public void setVideoId(Integer videoId) {
        this.videoId = videoId;
    }

    public Integer getVideoCode() {
        return videoCode;
    }

    public void setVideoCode(Integer videoCode) {
        this.videoCode = videoCode;
    }

    public String getVideoUrl() {
        return videoUrl;
    }

    public void setVideoUrl(String videoUrl) {
        this.videoUrl = videoUrl == null ? null : videoUrl.trim();
    }
}