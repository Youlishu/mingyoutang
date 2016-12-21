package com.pro.domain;

/**
 * 活动设置
 * @author Administrator
 *
 */
public class ActiveSet {
	
	//活动设置id
	private int activeId;
	//活动优先级
	private ActiveGrade activeGrade;
	//活动标题
	private String activeTitle;
	//活动开始时间
	private String beginTime;
	//活动结束时间
	private String endTime;
	public int getActiveId() {
		return activeId;
	}
	public void setActiveId(int activeId) {
		this.activeId = activeId;
	}
	public ActiveGrade getActiveGrade() {
		return activeGrade;
	}
	public void setActiveGrade(ActiveGrade activeGrade) {
		this.activeGrade = activeGrade;
	}
	public String getActiveTitle() {
		return activeTitle;
	}
	public void setActiveTitle(String activeTitle) {
		this.activeTitle = activeTitle;
	}
	public String getBeginTime() {
		return beginTime;
	}
	public void setBeginTime(String beginTime) {
		this.beginTime = beginTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	
	
}
