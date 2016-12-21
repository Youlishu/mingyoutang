package com.pro.domain;



public class ClassOrder {
	private int classOrderId;
	private String classOrderName;
	private String classOrderPlace;
	private String classOrderTime;
	private String orderStartTime;
	private String classOrderFee;
	private String classOrderoverTime;
	private String classcoursedetail;
	private String classOrderState;
	private Users users;


	public ClassOrder(int classOrderId, String classOrderName,
			String classOrderPlace, String classOrderTime,
			String orderStartTime, String classOrderFee,
			String classOrderoverTime, String classcoursedetail,
			String classOrderState, Users users) {
		super();
		this.classOrderId = classOrderId;
		this.classOrderName = classOrderName;
		this.classOrderPlace = classOrderPlace;
		this.classOrderTime = classOrderTime;
		this.orderStartTime = orderStartTime;
		this.classOrderFee = classOrderFee;
		this.classOrderoverTime = classOrderoverTime;
		this.classcoursedetail = classcoursedetail;
		this.classOrderState = classOrderState;
		this.users = users;
	}


	public String getClassOrderState() {
		return classOrderState;
	}


	public void setClassOrderState(String classOrderState) {
		this.classOrderState = classOrderState;
	}


	public int getClassOrderId() {
		return classOrderId;
	}


	public void setClassOrderId(int classOrderId) {
		this.classOrderId = classOrderId;
	}


	public String getClassOrderName() {
		return classOrderName;
	}


	public void setClassOrderName(String classOrderName) {
		this.classOrderName = classOrderName;
	}


	public String getClassOrderPlace() {
		return classOrderPlace;
	}


	public void setClassOrderPlace(String classOrderPlace) {
		this.classOrderPlace = classOrderPlace;
	}


	public String getClassOrderTime() {
		return classOrderTime;
	}


	public void setClassOrderTime(String classOrderTime) {
		this.classOrderTime = classOrderTime;
	}


	public String getOrderStartTime() {
		return orderStartTime;
	}


	public void setOrderStartTime(String orderStartTime) {
		this.orderStartTime = orderStartTime;
	}


	public String getClassOrderFee() {
		return classOrderFee;
	}


	public void setClassOrderFee(String classOrderFee) {
		this.classOrderFee = classOrderFee;
	}


	public String getClassOrderoverTime() {
		return classOrderoverTime;
	}


	public void setClassOrderoverTime(String classOrderoverTime) {
		this.classOrderoverTime = classOrderoverTime;
	}


	public String getClasscoursedetail() {
		return classcoursedetail;
	}


	public void setClasscoursedetail(String classcoursedetail) {
		this.classcoursedetail = classcoursedetail;
	}


	public Users getUsers() {
		return users;
	}


	public void setUsers(Users users) {
		this.users = users;
	}


	public ClassOrder() {
		super();
		// TODO Auto-generated constructor stub
	}

}
