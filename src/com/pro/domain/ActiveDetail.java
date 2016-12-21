package com.pro.domain;

public class ActiveDetail {

	//活动明细规则id
	private int activeDetailId;
	//具体活动
	private ActiveSet activeSet;
	//充值金额
	private double rechargePrice;
	//送积分数值
	private int sendIntegral;
	
	public int getActiveDetailId() {
		return activeDetailId;
	}
	public void setActiveDetailId(int activeDetailId) {
		this.activeDetailId = activeDetailId;
	}
	public ActiveSet getActiveSet() {
		return activeSet;
	}
	public void setActiveSet(ActiveSet activeSet) {
		this.activeSet = activeSet;
	}
	public double getRechargePrice() {
		return rechargePrice;
	}
	public void setRechargePrice(double rechargePrice) {
		this.rechargePrice = rechargePrice;
	}
	public int getSendIntegral() {
		return sendIntegral;
	}
	public void setSendIntegral(int sendIntegral) {
		this.sendIntegral = sendIntegral;
	}
	
	
}
