package com.pro.domain;

public class RechargeRecord {

	//充值记录id
	private int rechargeId;
	
	//操作员工
	private Employee emp;
	
	//充值金额
	private double rechargePrice;
	
	//充值时间
	private String rechargeTime;
	
	//会员卡
	private Card card;

	public int getRechargeId() {
		return rechargeId;
	}

	public void setRechargeId(int rechargeId) {
		this.rechargeId = rechargeId;
	}

	public Employee getEmp() {
		return emp;
	}

	public void setEmp(Employee emp) {
		this.emp = emp;
	}

	public double getRechargePrice() {
		return rechargePrice;
	}

	public void setRechargePrice(double rechargePrice) {
		this.rechargePrice = rechargePrice;
	}

	public String getRechargeTime() {
		return rechargeTime;
	}

	public void setRechargeTime(String rechargeTime) {
		this.rechargeTime = rechargeTime;
	}

	public Card getCard() {
		return card;
	}

	public void setCard(Card card) {
		this.card = card;
	}
	
	
	
}
