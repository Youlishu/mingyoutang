package com.pro.dao;

import java.util.List;





import org.springframework.stereotype.Repository;

import com.pro.domain.Course;
@Repository("courseDao")
public interface CourseDao {
	public void addCourse(Course course);
	public List<Course> findAllCourse();
	public Course findByCn(String courseName);
	public Course findById(String courseId);
}
