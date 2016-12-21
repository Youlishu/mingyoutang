package com.pro.domain;

public class Poder {
	private int poderId;
	private String poderName;
	private String poderlit;
	private String poderphone;
	private String poderrank;
	private String poderGrade;
	private String poderarea;
	private String poderpath;
	private String poderTime;
	
	public String getPoderTime() {
		return poderTime;
	}
	public void setPoderTime(String poderTime) {
		this.poderTime = poderTime;
	}
	public int getPoderId() {
		return poderId;
	}
	public void setPoderId(int poderId) {
		this.poderId = poderId;
	}
	public String getPoderName() {
		return poderName;
	}
	public void setPoderName(String poderName) {
		this.poderName = poderName;
	}
	public String getPoderlit() {
		return poderlit;
	}
	public void setPoderlit(String poderlit) {
		this.poderlit = poderlit;
	}
	public String getPoderphone() {
		return poderphone;
	}
	public void setPoderphone(String poderphone) {
		this.poderphone = poderphone;
	}
	public String getPoderGrade() {
		return poderGrade;
	}
	public void setPoderGrade(String poderGrade) {
		this.poderGrade = poderGrade;
	}
	public String getPoderarea() {
		return poderarea;
	}
	public void setPoderarea(String poderarea) {
		this.poderarea = poderarea;
	}
	public String getPoderpath() {
		return poderpath;
	}
	public void setPoderpath(String poderpath) {
		this.poderpath = poderpath;
	}
	public String getPoderrank() {
		return poderrank;
	}
	public void setPoderrank(String poderrank) {
		this.poderrank = poderrank;
	}
	public Poder() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Poder(int poderId, String poderName, String poderlit,
			String poderphone, String poderrank, String poderGrade,
			String poderarea, String poderpath, String poderTime) {
		super();
		this.poderId = poderId;
		this.poderName = poderName;
		this.poderlit = poderlit;
		this.poderphone = poderphone;
		this.poderrank = poderrank;
		this.poderGrade = poderGrade;
		this.poderarea = poderarea;
		this.poderpath = poderpath;
		this.poderTime = poderTime;
	}
	
	
	
	
}
