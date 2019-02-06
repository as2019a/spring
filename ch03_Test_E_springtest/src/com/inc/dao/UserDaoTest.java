package com.inc.dao;

import java.sql.SQLException;

import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
//import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.GenericXmlApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.inc.domain.User;
import com.inc.exception.EmptyResultException;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="/root-context.xml")
public class UserDaoTest {
	
	@Autowired
	private UserDao userDao;
	
	@Before
	public void setUp() throws SQLException {
		userDao.deleteAll();
	}
	
	@After
	public void tearDown() {
		System.out.println("after");
	}
	
	@Test
	public void add() throws SQLException, ClassNotFoundException {
		
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
	
	@Test(expected=SQLException.class)
	public void addFail() throws SQLException, ClassNotFoundException {
		
		User user = new User();
		user.setId("snow20189999999999999");
		user.setPassword("@korea201977777777777");
		user.setName("LYS999999999999");
		
		userDao.add(user);
	}
	
	@Test
	public void get() throws SQLException, ClassNotFoundException {
		
		
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
	
	@Test(expected=EmptyResultException.class)
	public void getFail() throws ClassNotFoundException, SQLException {
		
		userDao.get("unknown");
	}
}
