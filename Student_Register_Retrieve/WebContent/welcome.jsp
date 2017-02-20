<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome, <%= session.getAttribute("Username") %></title>
<style type="text/css">
h3{
text-align: center;
color: blue;
}
h2{
text-align: center;
color: Red;
}
</style>

</head>
<body>
	<h3>Login Successful!!!</h3>
	<h2>
	Hello, <%= session.getAttribute("Username") %>
	</h2>
	Please, <a href="RetrieveServlet">click here</a> to view all the
		students record
</body>
</html>