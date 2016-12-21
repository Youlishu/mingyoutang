package com.pro.domain;

public class IntegralRecord {
	//积分记录id
	private int integralRecordId;
	
	//积分类型
	private IntegralType integralType;
	
	//会员卡
	private Card card;
	
	//操作员工
	private Employee emp;
	
	//积分添加日期
	private String integralTime;
	
	//分值
	private int integralValue;

	public int getIntegralRecordId() {
		return integralRecordId;
	}

	public void setIntegralRecordId(int integralRecordId) {
		this.integralRecordId = integralRecordId;
	}

	public IntegralType getIntegralType() {
		return integralType;
	}

	public void setIntegralType(IntegralType integralType) {
		this.integralType = integralType;
	}

	public Card getCard() {
		return card;
	}

	public void setCard(Card card) {
		this.card = card;
	}

	public Employee getEmp() {
		return emp;
	}

	public void setEmp(Employee emp) {
		this.emp = emp;
	}

	public String getIntegralTime() {
		return integralTime;
	}

	public void setIntegralTime(String integralTime) {
		this.integralTime = integralTime;
	}

	public int getIntegralValue() {
		return integralValue;
	}

	public void setIntegralValue(int integralValue) {
		this.integralValue = integralValue;
	}
	
	
}
