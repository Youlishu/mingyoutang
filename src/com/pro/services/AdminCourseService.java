package com.pro.services;

import java.util.List;

import com.pro.domain.AdminCourse;

public interface AdminCourseService {
	public void addAdminCourse(AdminCourse adminCourse);
	public List<AdminCourse> findallAdCourse();
}
