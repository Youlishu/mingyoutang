package com.pro.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.pro.domain.Allotcourese;

@Repository("fenCourseDao")
public interface FenCourseDao {
	public void addfencourse(Allotcourese allotcourese);
	public List<Allotcourese> fingallotById(int userId);
	
}
