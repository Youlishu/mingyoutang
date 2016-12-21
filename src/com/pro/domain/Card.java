package com.pro.domain;

public class Card {

	//id
	private int cardId;
	//卡状态
	private CardStatus cardStatus;
	//操作办卡员工
	private Employee emp;
	//卡编号
	private String cardNo;
	//卡积分
	private int cardIntegral;
	//卡余额
	private double cardBalance;
	//办卡时间
	private String createCardTime;
	//最后消费日期
	private String lastConsumeTime;
	//持卡人
	private String cardPersonName;
	//生日
	private String birthDay;
	//电话
	private String tel;
	//地址
	private String address;
	public int getCardId() {
		return cardId;
	}
	public void setCardId(int cardId) {
		this.cardId = cardId;
	}
	public CardStatus getCardStatus() {
		return cardStatus;
	}
	public void setCardStatus(CardStatus cardStatus) {
		this.cardStatus = cardStatus;
	}
	public Employee getEmp() {
		return emp;
	}
	public void setEmp(Employee emp) {
		this.emp = emp;
	}
	public String getCardNo() {
		return cardNo;
	}
	public void setCardNo(String cardNo) {
		this.cardNo = cardNo;
	}
	public int getCardIntegral() {
		return cardIntegral;
	}
	public void setCardIntegral(int cardIntegral) {
		this.cardIntegral = cardIntegral;
	}
	public double getCardBalance() {
		return cardBalance;
	}
	public void setCardBalance(double cardBalance) {
		this.cardBalance = cardBalance;
	}
	public String getCreateCardTime() {
		return createCardTime;
	}
	public void setCreateCardTime(String createCardTime) {
		this.createCardTime = createCardTime;
	}
	public String getLastConsumeTime() {
		return lastConsumeTime;
	}
	public void setLastConsumeTime(String lastConsumeTime) {
		this.lastConsumeTime = lastConsumeTime;
	}
	public String getCardPersonName() {
		return cardPersonName;
	}
	public void setCardPersonName(String cardPersonName) {
		this.cardPersonName = cardPersonName;
	}
	public String getBirthDay() {
		return birthDay;
	}
	public void setBirthDay(String birthDay) {
		this.birthDay = birthDay;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}	
}
