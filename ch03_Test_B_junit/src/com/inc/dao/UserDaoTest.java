package com.inc.dao;

import java.sql.SQLException;

import org.junit.Assert;
//import org.junit.Before;
import org.junit.Test;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.inc.domain.User;

public class UserDaoTest {
	
	@Test
	public void add() throws SQLException, ClassNotFoundException {
		GenericXmlApplicationContext container
			= new GenericXmlApplicationContext("root-context.xml");
		UserDao userDao = container.getBean(UserDao.class);
		
		userDao.deleteAll();
		
		User user = new User();
		user.setId("snow2018");
		user.setPassword("@korea2019");
		user.setName("LYS");
		
		userDao.add(user);
		
		User savedUser = userDao.get(user.getId());
		
		Assert.assertEquals(user.getId(), savedUser.getId());
		Assert.assertEquals(user.getPassword(), savedUser.getPassword());
		Assert.assertEquals(user.getName(), savedUser.getName());
	}
	
	@Test
	public void get() throws SQLException, ClassNotFoundException {
		GenericXmlApplicationContext container
			= new GenericXmlApplicationContext("root-context.xml");
		UserDao userDao = container.getBean(UserDao.class);
		
		userDao.deleteAll();
		
		User user1 = new User();
		user1.setId("harry");
		user1.setPassword("1269");
		user1.setName("해리포터");
		
		User user2 = new User();
		user2.setId("lone");
		user2.setPassword("1920");
		user2.setName("론");
		
		userDao.add(user1);
		userDao.add(user2);
		
		User savedUser1 = userDao.get(user1.getId());
		User savedUser2 = userDao.get(user2.getId());
		
		Assert.assertEquals(user1.getId(), savedUser1.getId());
		Assert.assertEquals(user1.getPassword(), savedUser1.getPassword());
		Assert.assertEquals(user1.getName(), savedUser1.getName());
		
		Assert.assertEquals(user2.getId(), savedUser2.getId());
		Assert.assertEquals(user2.getPassword(), savedUser2.getPassword());
		Assert.assertEquals(user2.getName(), savedUser2.getName());
		
	}
}
