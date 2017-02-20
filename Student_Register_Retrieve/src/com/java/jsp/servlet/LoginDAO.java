package com.java.jsp.servlet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



public class LoginDAO {

	public static boolean validate(String name, String pass) {        
        boolean status = false;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet result = null;
		
	try {
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
		String sql = "select * from student where username=? and password=?";
		ps = conn.prepareStatement(sql);
		ps.setString(1, name);
		ps.setString(2, pass);
		result = ps.executeQuery();
		status = result.next();
	} catch (Exception e) {
		e.printStackTrace();
	}finally {
		try {
			if(conn != null){
			conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			if (ps != null){
			ps.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	return status;
	}

}
