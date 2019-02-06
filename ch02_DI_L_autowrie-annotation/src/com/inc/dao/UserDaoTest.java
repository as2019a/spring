package com.inc.dao;

import java.sql.SQLException;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.GenericApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.inc.domain.User;
import com.inc.util.DbConnector;
import com.inc.util.OracleConnector;

public class UserDaoTest {

	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		
		GenericXmlApplicationContext container
			= new GenericXmlApplicationContext();
		
		container.load("root-context.xml");
		
		container.refresh();
		
		UserDao userDao = (UserDao)container.getBean("userDao");
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