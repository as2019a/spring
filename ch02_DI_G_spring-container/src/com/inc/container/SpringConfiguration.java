package com.inc.container;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.inc.dao.CommentDao;
import com.inc.dao.UserDao;
import com.inc.util.MysqlConnector;
import com.inc.util.OracleConnector;

@Configuration
public class SpringConfiguration {
	
	//자바방식을 사용하여 Spring Container가 사용할 설정정보 작성
	
	@Bean
	public UserDao userDao() {
		UserDao userDao = new UserDao();
		userDao.setConnector(oracleConnector());
		return userDao;
	}
	
	@Bean
	public CommentDao commentDao() {
		CommentDao commentDao = new CommentDao();
		commentDao.setConnector(mysqlConnector());
		return commentDao;
	}
	
	@Bean
	public OracleConnector oracleConnector() {
		return new OracleConnector(); 
	}
	
	@Bean
	public MysqlConnector mysqlConnector() {
		return new MysqlConnector();
	}
}