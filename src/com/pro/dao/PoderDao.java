package com.pro.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.pro.domain.Poder;

@Repository("poderDao")
public interface PoderDao {
	public void addPoder(Poder poder);

	public List<Poder> findAllBytel(String tel);
	public List<Poder> findAllById();
}
