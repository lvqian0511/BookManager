package edu.hebeu.service.impl;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;


import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.hebeu.dao.UserDao;
import edu.hebeu.po.User;
import edu.hebeu.service.UserService;
 
public class UserServiceImpl implements UserService {
	//×¢½â×¢ÈëcustomerDao
	@Autowired
	private UserDao userDao;
	@Override
	public void regist(User user) {
		this.userDao.insertUser(user);
		
	}
	@Override
	public User login(String username, String password) {
		return this.userDao.findUserByNameAndPwd(username, password);
		
	}

}
