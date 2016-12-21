package com.pro.domain;


public class AdminCourse {
	private String adminCourseId;
	private String adminCourseName;
	private String adminCourseStyle;
	private String adminCourseGrade;
	private String adminCourseStime;
	private String adminCourseDetail;
	public String getAdminCourseId() {
		return adminCourseId;
	}
	public void setAdminCourseId(String adminCourseId) {
		this.adminCourseId = adminCourseId;
	}
	public String getAdminCourseName() {
		return adminCourseName;
	}
	public void setAdminCourseName(String adminCourseName) {
		this.adminCourseName = adminCourseName;
	}
	public String getAdminCourseStyle() {
		return adminCourseStyle;
	}
	public void setAdminCourseStyle(String adminCourseStyle) {
		this.adminCourseStyle = adminCourseStyle;
	}
	public String getAdminCourseGrade() {
		return adminCourseGrade;
	}
	public void setAdminCourseGrade(String adminCourseGrade) {
		this.adminCourseGrade = adminCourseGrade;
	}
	public String getAdminCourseStime() {
		return adminCourseStime;
	}
	public void setAdminCourseStime(String adminCourseStime) {
		this.adminCourseStime = adminCourseStime;
	}
	public String getAdminCourseDetail() {
		return adminCourseDetail;
	}
	public void setAdminCourseDetail(String adminCourseDetail) {
		this.adminCourseDetail = adminCourseDetail;
	}
	public AdminCourse(String adminCourseId, String adminCourseName,
			String adminCourseStyle, String adminCourseGrade,
			String adminCourseStime, String adminCourseDetail) {
		super();
		this.adminCourseId = adminCourseId;
		this.adminCourseName = adminCourseName;
		this.adminCourseStyle = adminCourseStyle;
		this.adminCourseGrade = adminCourseGrade;
		this.adminCourseStime = adminCourseStime;
		this.adminCourseDetail = adminCourseDetail;
	}
	public AdminCourse() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}
