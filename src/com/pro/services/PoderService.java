package com.pro.services;

import java.util.List;

import com.pro.domain.Poder;

public interface PoderService {
	public void addPoder(Poder poder);
	public List<Poder> findAllBytel(String tel);
	public List<Poder> findAllById();
}
