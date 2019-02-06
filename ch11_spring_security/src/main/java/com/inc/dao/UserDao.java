package com.inc.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.inc.domain.User;

@Repository
public class UserDao {
	
	@Autowired
	private SqlSession session;
	
	public User selectOne(String id) {
		return session.selectOne("user.selectOne", id);
	}
	
	
}
