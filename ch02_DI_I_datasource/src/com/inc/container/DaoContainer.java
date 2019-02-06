package com.inc.container;

import com.inc.dao.CommentDao;
import com.inc.dao.UserDao;
import com.inc.util.DbConnector;
import com.inc.util.MysqlConnector;
import com.inc.util.OracleConnector;

public class DaoContainer {
	//객체 생성 및 의존관계 설정담당
	public UserDao userDao() {
		UserDao userDao = new UserDao();
		userDao.setConnector(new OracleConnector());
		return userDao;
	}
	
	public CommentDao commentDao() {
		CommentDao commentDao = new CommentDao();
		commentDao.setConnector(new OracleConnector());
		return commentDao;
	}
}