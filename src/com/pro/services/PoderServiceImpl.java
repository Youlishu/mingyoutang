package com.pro.services;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.pro.dao.PoderDao;
import com.pro.domain.Poder;

@Service("poderService")
public class PoderServiceImpl implements PoderService {
	@Resource
	private PoderDao poderDao;
	public void addPoder(Poder poder) {
		// TODO Auto-generated method stub
		poderDao.addPoder(poder);
	}
	public List<Poder> findAllBytel(String tel) {
		// TODO Auto-generated method stub
		List<Poder> list = poderDao.findAllBytel(tel);
		return list;
	}
	public List<Poder> findAllById() {
		// TODO Auto-generated method stub
		return poderDao.findAllById();
	}

}
