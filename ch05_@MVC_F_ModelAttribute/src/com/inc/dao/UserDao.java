package com.inc.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;

import com.inc.domain.User;

public class UserDao {
	
	private SqlSession sqlSession;
	
	public SqlSession getSqlSession() {
		return sqlSession;
	}

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public void add(User user) {
		sqlSession.insert("user.add", user);
	}
	
	public User get(String id) {
		return sqlSession.selectOne("user.get", id);
	}
	
	public List<User> getList() {
		return sqlSession.selectList("user.getlist");
	}

	

	
}