package com.inc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.inc.dao.UserDao;
import com.inc.domain.User;

@Service
public class UserService {
	
	@Autowired
	private UserDao userDao;

	public boolean signin(User user) {
		User realUser = userDao.selectOne(user);
		if(realUser != null) {
			return true;
		}else {
			return false;
		}
	}
	
}
