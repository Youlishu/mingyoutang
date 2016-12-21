package com.pro.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.pro.domain.AdminCourse;
@Repository("adminCourseDao")
public interface AdminCourseDao {
		public void addAdminCourse(AdminCourse adminCourse);
		public List<AdminCourse> findallAdCourse();
}
