package com.pro.domain;


public class Course {
	private String courseId;
	private String courseGrade;
	private String courseName;
	private String coursePlace;
	private String courseTime;
	private String courseStyle;
	private String coursedetail;
	private String courseNum;
	private String courseoverTime;
	private String courseFee;
	
	public String getCourseId() {
		return courseId;
	}

	public void setCourseId(String courseId) {
		this.courseId = courseId;
	}

	public String getCourseGrade() {
		return courseGrade;
	}

	public void setCourseGrade(String courseGrade) {
		this.courseGrade = courseGrade;
	}

	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public String getCoursePlace() {
		return coursePlace;
	}

	public void setCoursePlace(String coursePlace) {
		this.coursePlace = coursePlace;
	}

	public String getCourseTime() {
		return courseTime;
	}

	public void setCourseTime(String courseTime) {
		this.courseTime = courseTime;
	}

	public String getCourseStyle() {
		return courseStyle;
	}

	public void setCourseStyle(String courseStyle) {
		this.courseStyle = courseStyle;
	}

	public String getCoursedetail() {
		return coursedetail;
	}

	public void setCoursedetail(String coursedetail) {
		this.coursedetail = coursedetail;
	}

	public String getCourseNum() {
		return courseNum;
	}

	public void setCourseNum(String courseNum) {
		this.courseNum = courseNum;
	}

	public String getCourseoverTime() {
		return courseoverTime;
	}

	public void setCourseoverTime(String courseoverTime) {
		this.courseoverTime = courseoverTime;
	}

	public String getCourseFee() {
		return courseFee;
	}

	public void setCourseFee(String courseFee) {
		this.courseFee = courseFee;
	}
	
	
	public Course(String courseId, String courseGrade, String courseName,
			String coursePlace, String courseTime, String courseStyle,
			String coursedetail, String courseNum, String courseoverTime,
			String courseFee) {
		super();
		this.courseId = courseId;
		this.courseGrade = courseGrade;
		this.courseName = courseName;
		this.coursePlace = coursePlace;
		this.courseTime = courseTime;
		this.courseStyle = courseStyle;
		this.coursedetail = coursedetail;
		this.courseNum = courseNum;
		this.courseoverTime = courseoverTime;
		this.courseFee = courseFee;
	}

	public Course() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	
	
}
