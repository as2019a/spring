package com.inc.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.inc.domain.User;

@Repository
public class UserDao {
	
	@Autowired
	private SqlSession session;
	
	public User selectOne(User checkUser) {
		return session.selectOne("user.selectOne", checkUser);
	}
	
}
