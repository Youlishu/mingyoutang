package com.pro.services;

import java.util.List;


import com.pro.domain.ClassOrder;


public interface ClassOrderService {
	public void addClassOrder(ClassOrder classOrder);
	public ClassOrder findByClassOrderId(int ClassOrderId);
	public List<ClassOrder> findByClassUserId(int userId);
	public List<ClassOrder> findAllClassOrder();
	public List<ClassOrder> findByOrderName(String courseName);
}
