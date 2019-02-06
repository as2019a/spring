package com.inc.dao;

import java.sql.SQLException;

import com.inc.container.DaoContainer;
import com.inc.domain.User;
import com.inc.util.DbConnector;
import com.inc.util.OracleConnector;

public class UserDaoTest {

	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		DaoContainer container = new DaoContainer();
		
		UserDao userDao = container.userDao();
		User user = new User();
		user.setId("kosn");
		user.setPassword("1239");
		user.setName("이영섭");
		
		userDao.add(user);
		
		User savedUser = userDao.get(user.getId());
		System.out.println(savedUser.getId());
		System.out.println(savedUser.getPassword());
		System.out.println(savedUser.getName());
				
	}

}