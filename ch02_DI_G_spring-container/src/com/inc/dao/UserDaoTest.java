package com.inc.dao;

import java.sql.SQLException;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.inc.container.DaoContainer;
import com.inc.container.SpringConfiguration;
import com.inc.domain.User;
import com.inc.util.DbConnector;
import com.inc.util.OracleConnector;

public class UserDaoTest {

	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		//스프링 컨테이너 설정
		//AnnotationContext == SpringContainet
		AnnotationConfigApplicationContext container
			= new AnnotationConfigApplicationContext();
		
		//빈 설정정보(configuration)등록
		container.register(SpringConfiguration.class);
		
		//컨테이너 새로고침
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