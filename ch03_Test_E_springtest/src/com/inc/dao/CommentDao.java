package com.inc.dao;

import java.sql.Connection;

import com.inc.util.DbConnector;
import com.inc.util.OracleConnector;

public class CommentDao {
	//setter-injection을 구현하시오
	DbConnector connector;
	
	public void setConnector(DbConnector connector) {
		this.connector = connector;
	}
	
	public void add() {
		Connection conn = connector.getConnection();
	}
	
	public void get() {
		Connection conn = connector.getConnection();
	}
}
