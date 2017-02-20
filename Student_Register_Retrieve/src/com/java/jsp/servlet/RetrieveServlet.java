package com.java.jsp.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class RetrieveServlet
 */
@WebServlet("/RetrieveServlet")
public class RetrieveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Connection conn = null;
		Statement st = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
			String sql = "SELECT id,username,city,zip,email FROM student";
			st = conn.createStatement();
			ResultSet result = st.executeQuery(sql);

			ArrayList<Student> studentsList = new ArrayList<Student>();

			while (result.next()) {

				Student student = new Student();

				student.setId(result.getInt(1));
				student.setUsername(result.getString(2));
				student.setCity(result.getString(3));
				student.setZip(result.getString(4));
				student.setEmail(result.getString(5));
				studentsList.add(student);
			}

			HttpSession session = request.getSession();
			session.setAttribute("STUDENTS_LIST", studentsList);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			try {
				if (st != null) {
					st.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}

		}
		
		response.sendRedirect("listofstudents.jsp");

	}

}
