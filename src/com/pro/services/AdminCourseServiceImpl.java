package com.pro.services;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.pro.dao.AdminCourseDao;
import com.pro.domain.AdminCourse;
@Service("adminCourseService")
public class AdminCourseServiceImpl implements AdminCourseService {
	@Resource AdminCourseDao adminCourseDao;
	public void addAdminCourse(AdminCourse adminCourse) {
		// TODO Auto-generated method stub
		adminCourseDao.addAdminCourse(adminCourse);
	}
	public List<AdminCourse> findallAdCourse() {
		// TODO Auto-generated method stub
		return adminCourseDao.findallAdCourse();
	}

}
