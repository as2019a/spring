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
		
		//users테이블에서 모든 튜플 삭제
		userDao.deleteAll();
		
		User user = new User();
		user.setId("korf");
		user.setPassword("1239");
		user.setName("이영섭");
		
		userDao.add(user);
		
		User savedUser = userDao.get(user.getId());
		
		if(!user.getId().equals(savedUser.getId())) {
			System.out.println("테스트 실패 - 아이디 : "+savedUser.getId());
		}else if (!user.getPassword().equals(savedUser.getPassword())) {
			System.out.println("테스트 실패 - 비밀번호 : "+savedUser.getPassword());
		}else if (!user.getName().equals(savedUser.getName())) {
			System.out.println("테스트 실패 - 이름 : "+savedUser.getName());
		}else {
			System.out.println("테스트 성공");
		}
				
	}

}