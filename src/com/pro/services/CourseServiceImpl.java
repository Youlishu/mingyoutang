package com.pro.services;

import java.util.List;


import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.pro.dao.CourseDao;
import com.pro.domain.Course;
@Service("courseService")
public class CourseServiceImpl implements CourseService {
	
	@Resource
	private CourseDao courseDao;
	
	public void addCourse(Course course) {
		// TODO Auto-generated method stub
		courseDao.addCourse(course);
	}

	public List<Course> findAllCourse() {
		// TODO Auto-generated method stub
		return courseDao.findAllCourse();
	}

	public Course fingByCn(String courseName) {
		// TODO Auto-generated method stub
		return courseDao.findByCn(courseName);
	}

	public Course findById(String courseId) {
		// TODO Auto-generated method stub
		return courseDao.findById(courseId);
	}

	

	

	
	

	

	

}
