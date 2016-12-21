package com.pro.services;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.pro.dao.FenCourseDao;
import com.pro.domain.Allotcourese;
@Service("fenCourseService")
public class FenCourseServiceImpl implements FenCourseService {
	@Resource
	private FenCourseDao fenCourseDao;
	public void addfencourse(Allotcourese allotcourese) {
		// TODO Auto-generated method stub
		fenCourseDao.addfencourse(allotcourese);
	}
	public List<Allotcourese> fingallotById(int userId) {
		// TODO Auto-generated method stub
		return fenCourseDao.fingallotById(userId);
	}
	

}
