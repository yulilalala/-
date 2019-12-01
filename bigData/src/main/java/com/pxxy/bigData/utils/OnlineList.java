package com.pxxy.bigData.utils;

public class OnlineList {

	private static final OnlineList onlineList = new OnlineList();
	
    public static int online;
    //最大数
  	private int maxSession;
  	
  	public void addSession() {
  		online++;
  	}
  	public void delSession() {
  		online--;
  	}
  	
  	
  	public int getOnline() {
		return online;
	}
	public int maxSession() {
		return maxSession;
	}
	
	static OnlineList getInstance() {
		return onlineList;
	}
}
