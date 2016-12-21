package com.pro.dao;

import java.util.List;


import org.springframework.stereotype.Repository;

import com.pro.domain.ClassOrder;

@Repository("classOrderDao")
public interface ClassOrderDao {
	public void addClassOrder(ClassOrder classOrder);
	public ClassOrder findByClassOrderId(int ClassOrderId);
	public List<ClassOrder> findByClassUserId(int userId);
	public List<ClassOrder> findAllClassOrder();
	public List<ClassOrder> findByOrderName(String courseName);
}
