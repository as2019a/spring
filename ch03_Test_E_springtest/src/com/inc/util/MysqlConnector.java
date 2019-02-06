package com.inc.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class MysqlConnector implements DbConnector{
	
	public Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName("mysql.jdbc.driver.MysqlDriver");
			
			conn = DriverManager.getConnection(
						"jdbc:mysql:thin:@localhost:1521:test", 
						"spring", "1111");
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return conn;
	}
}
