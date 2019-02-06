package com.inc.service;

import java.sql.SQLException;
import java.util.List;

import com.inc.dao.UserDao;
import com.inc.domain.User;

public class UserService {
	
	private UserDao userDao;
	
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	
	//service레이어는 비즈니스 로직(트렌잭션처리)을 처리하는 계층
	public List<User> getList() {
		List<User> userList = userDao.getList();
		for(User user : userList) {
			user.setPassword("**"+user.getPassword().substring(2));
		}
		return userList;
	}

	public void add(User user) {
			userDao.add(user);
	}
	
}
