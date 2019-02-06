package com.inc.dao;

import java.sql.Connection;

import com.inc.util.DbConnector;

public class CommentDao {
	DbConnector connector = new DbConnector();
	
	public void add() {
		Connection conn = connector.getConnection();
		
	}
	
	public void get() {
		Connection conn = connector.getConnection();
	}
}
