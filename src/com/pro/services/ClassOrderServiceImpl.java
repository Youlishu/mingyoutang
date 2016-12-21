package com.pro.services;

import java.util.List;


import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.pro.dao.ClassOrderDao;
import com.pro.domain.ClassOrder;


@Service("classOrderService")
public class ClassOrderServiceImpl implements ClassOrderService {
	
	@Resource
	private ClassOrderDao classOrderDao;
	public void addClassOrder(ClassOrder classOrder) {
		// TODO Auto-generated method stub
		classOrderDao.addClassOrder(classOrder);
	}
	public ClassOrder findByClassOrderId(int ClassOrderId) {
		// TODO Auto-generated method stub
		return classOrderDao.findByClassOrderId(ClassOrderId);
	}
	public List<ClassOrder> findByClassUserId(int userId) {
		// TODO Auto-generated method stub
		return classOrderDao.findByClassUserId(userId);
	}
	public List<ClassOrder> findAllClassOrder() {
		// TODO Auto-generated method stub
		return classOrderDao.findAllClassOrder();
	}
	public List<ClassOrder> findByOrderName(String courseName) {
		// TODO Auto-generated method stub
		return classOrderDao.findByOrderName(courseName);
	}
}
