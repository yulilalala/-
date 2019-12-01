package com.pxxy.bigData.exception;

public class SessionNotFoundException extends Exception{
	
	protected String message;

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	
	 public SessionNotFoundException() {
	        setMessage("找不到会话，请稍后重试！");
	    }

	 public SessionNotFoundException(String message) {
	        this.message = message;
	   }

}
