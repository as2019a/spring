package com.inc.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.inc.domain.Job;
import com.inc.domain.User;

public class JobDao {
	
private SqlSession sqlSession;
	
	public SqlSession getSqlSession() {
		return sqlSession;
	}

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public List<Job> jobList() {
		return sqlSession.selectList("job.joblist");
	}
	
	public void add(Job job) {
		sqlSession.insert("job.add", job);
	}
}
