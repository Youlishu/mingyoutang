package com.pro.services;

import java.util.List;

import com.pro.domain.Course;

public interface CourseService {
	public void addCourse(Course course);
	public List<Course> findAllCourse();
	public Course fingByCn(String courseName);
	public Course findById(String courseId);
}
