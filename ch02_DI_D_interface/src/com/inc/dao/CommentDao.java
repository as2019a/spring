package com.inc.dao;

import java.sql.Connection;

import com.inc.util.OracleConnector;

public class CommentDao {
	OracleConnector connector = new OracleConnector();
	
	public void add() {
		Connection conn = connector.getConnection();
		
	}
	
	public void get() {
		Connection conn = connector.getConnection();
	}
}
