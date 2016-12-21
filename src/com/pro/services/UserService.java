package com.pro.services;



import java.util.List;







import com.pro.domain.Users;

public interface UserService {

	public void saveUser(Users user);
	
	/*public void deleteUser(int userId);*/
	
	public void updateUser(Users user);
	
	public Users findUserByName(String userName);
	public Users findUserBypas(String password);
	List<Users> queryUsers();
	public List<Users> queryTea();
	public void updatepas(String password,String userName);
	public Users findById(int userId);
}
