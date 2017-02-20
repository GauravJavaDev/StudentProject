<%@page import="com.java.jsp.servlet.Student"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List of Students</title>
<style>
table, th, td {
	border: 1px solid blue;
	padding: 10px;
	text-align: center;
	width: auto;
    margin-left: auto;
    margin-right: auto;
}
tr:nth-child(even) {background-color: gray}
tr:nth-child(odd) {background-color: silver}
th {
    background-color: #4CAF50;
    color: white;
}
tr:hover {background-color: #f5f5f5}
h1{
text-align: center;
color: blue;
}
</style>

</head>
<body>
	<h1>Student Details</h1>
	<table>
		<thead>
			<tr>
				<th>Student Roll Number</th>
				<th>Username</th>
				<th>City</th>
				<th>Zip</th>
				<th>E-mail</th>
			</tr>
		</thead>

		<%
			ArrayList<Student> studentsList = (ArrayList) session.getAttribute("STUDENTS_LIST");

			Iterator<Student> iterator = studentsList.iterator();

			while (iterator.hasNext()) {
				Student student = (Student) iterator.next();
		%>
		<tr>
			<td><%=student.getId()%></td>

			<td><%=student.getUsername()%></td>

			<td><%=student.getCity()%></td>

			<td><%=student.getZip()%></td>
			
			<td><%=student.getEmail()%></td>

		</tr>

		<%
			}
		%>

	</table>

</body>
</html>