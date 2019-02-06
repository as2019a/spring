package com.inc.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class OracleConnector {
	
	public static Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			conn = DriverManager.getConnection(
						"jdbc:oracle:thin:@localhost:1521:xe", 
						"spring", "1111");
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return conn;
	}
}
