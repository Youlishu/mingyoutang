package com.pro.services;


import java.util.List;






import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.pro.dao.UserDao;
import com.pro.domain.Users;

@Service("userService")
public class UserServiceImpl implements UserService {
	
	@Resource
	private UserDao userDao;
	
	
	public void saveUser(Users user) {
		
		userDao.addUser(user);
		//throw new RuntimeException("-----");
		//userDao.addUser(user);
		//userDao.addUser(user);
	}


	/*public void deleteUser(int userId) {
		userDao.deleteUser(userId);
		
	}*/


	public Users findUserByName(String userName) {
		// TODO Auto-generated method stub
		return userDao.findUserByName(userName);
	}
	public List<Users> queryUsers() {
		// TODO Auto-generated method stub
		return userDao.queryUsers();
	}

/*	public Map<String,Object> queryUsers(int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		Map<String,Integer> mapParam=new HashMap<String,Integer>();
		mapParam.put("end", currentPage*pageSize);
		mapParam.put("begin", (currentPage-1)*pageSize);
		
		List<Users> userList=userDao.queryUsers(mapParam);
		int rowCount=userDao.getRowCount();
		
		Map<String,Object> mapPage=new HashMap<String,Object>();
		mapPage.put("userList", userList);
		mapPage.put("rowCount", rowCount);
		mapPage.put("currentPage", currentPage);
		int totalPage=(rowCount+pageSize-1)/pageSize;
		mapPage.put("totalPage",totalPage );
		
		return mapPage;
	}
*/

	
	public void updateUser(Users user) {
		userDao.updateUser(user);		
	}


	public List<Users> queryTea() {
		// TODO Auto-generated method stub
		return userDao.queryTea();
	}


	public Users findUserBypas(String password) {
		// TODO Auto-generated method stub
		return userDao.findUserBypas(password);
	}


	public void updatepas(String password,String userName) {
		// TODO Auto-generated method stub
		userDao.updatepas(password,userName);
	}


	public Users findById(int userId) {
		// TODO Auto-generated method stub
		return userDao.findById(userId);
	}


	

}
