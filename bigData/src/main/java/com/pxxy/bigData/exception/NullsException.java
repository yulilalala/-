package com.pxxy.bigData.exception;

public class NullsException extends Exception{
	
	protected String message;

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	
	 public NullsException() {
	        setMessage("你输入的参数为空，请填写相关参数！");
	   }

	 public NullsException(String message) {
	        this.message = message;
	   }
	
}
