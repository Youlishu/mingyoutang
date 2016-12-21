package com.pro.dao;

import java.util.List;


import org.springframework.stereotype.Repository;

import com.pro.domain.Users;
@Repository("userDao")
public interface UserDao {

	public void addUser(Users user);
	
	/*public void deleteUser(int userId);*/
	
	public void updateUser(Users user);
	public Users findUserByName(String userName);
	public Users findUserBypas(String password);
	public List<Users> queryUsers();
	public List<Users> queryTea();
	public void updatepas(String password,String userName);
	public Users findById(int userId);
	
	/*public int getRowCount();*/
}
