package com.inc.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;
import javax.xml.crypto.Data;

import com.inc.domain.User;
import com.inc.util.DbConnector;
import com.inc.util.MysqlConnector;
import com.inc.util.OracleConnector;

public class UserDao {
	
	//DbConnector connector;
	private DataSource dataSource;
	
	//constructor-injection
	public UserDao(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	//setter-injection
	/*public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}*/
	
	public void add(User user) throws ClassNotFoundException, SQLException {
		
		String query = "insert into users values(?,?,?)";
		
		Connection conn = dataSource.getConnection();
		
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
		Connection conn = dataSource.getConnection();
		
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

	
}