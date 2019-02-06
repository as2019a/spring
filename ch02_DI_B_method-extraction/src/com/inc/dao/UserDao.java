package com.inc.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.inc.domain.User;

public class UserDao {
	public void add(User user) throws ClassNotFoundException, SQLException {
		
		String query = "insert into users values(?,?,?)";
		
		Connection conn = getConnection();
		
		PreparedStatement stmt = 
					conn.prepareStatement(query);
		stmt.setString(1, user.getId());
		stmt.setString(2, user.getPassword());
		stmt.setString(3, user.getName());
		
		stmt.executeUpdate();
		
		stmt.close();
		conn.close();
	}
	
	public User get(String id) throws ClassNotFoundException, SQLException {
		Connection conn = getConnection();
		
		String query = "select * from users where id = ?";
		
		PreparedStatement stmt = 
				conn.prepareStatement(query);
		stmt.setString(1, id);
		
		ResultSet rs = stmt.executeQuery();
		
		User user = null;
		
		if(rs.next()) {
			user = new User();
			user.setId(rs.getString("id"));
			user.setPassword(rs.getString("password"));
			user.setName(rs.getString("name"));
		};
		
		rs.close();
		stmt.close();
		conn.close();
		
		return user;
	}

	public Connection getConnection() {
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