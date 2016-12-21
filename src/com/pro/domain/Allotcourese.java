package com.pro.domain;

public class Allotcourese {
	private int allotId;
	private int userId;
	private String courseId;
	public int getAllotId() {
		return allotId;
	}
	public void setAllotId(int allotId) {
		this.allotId = allotId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getCourseId() {
		return courseId;
	}
	public void setCourseId(String courseId) {
		this.courseId = courseId;
	}
	public Allotcourese(int allotId, int userId, String courseId) {
		super();
		this.allotId = allotId;
		this.userId = userId;
		this.courseId = courseId;
	}
	public Allotcourese() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Allotcourese(int userId, String courseId) {
		super();
		this.userId = userId;
		this.courseId = courseId;
	}
	
	
	
}
