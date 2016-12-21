package com.pro.services;

import java.util.List;

import com.pro.domain.Allotcourese;

public interface FenCourseService {
	public void addfencourse(Allotcourese allotcourese);
	public List<Allotcourese> fingallotById(int userId);
}
