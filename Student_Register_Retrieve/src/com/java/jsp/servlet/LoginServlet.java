package com.java.jsp.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		HttpSession session = request.getSession();
		session.setAttribute("Username", username);
		session.setAttribute("Password", password);

		 if(LoginDAO.validate(username, password)){  
	            RequestDispatcher rd=request.getRequestDispatcher("welcome.jsp");  
	            rd.forward(request,response);  
	        }  
	        else{  
	            out.print("<p style=\"color:red\">Sorry username or password error</p>");  
	            RequestDispatcher rd=request.getRequestDispatcher("success.jsp");  
	            rd.include(request,response);  
	        }  
	}

}
