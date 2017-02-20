<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login page</title>
<style type="text/css">
input[type=text], select {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=password], select {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=submit] {
	width: 100%;
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type=submit]:hover {
	background-color: #45a049;
}

div {
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 20px;
	width: 50%;
	height: 10%;
	margin-right: auto;
	margin-left: auto;
	width: 400px;
}

h3 {
	font-family: sans-serif;
	text-align: center;
}
</style>
</head>
<body>
	<form action="LoginServlet" method="post">
		<div>
			<h3>Student Login Page</h3>
			Username: <br> <input type="text" name="username"
				placeholder="Enter Username..." id="username" required="required">
			<br> <br> Password: <br> <input type="password"
				name="password" placeholder="Enter Password..." id="password"
				required="required"> <br> <br> <input
				type="submit" value="Login" />
		</div>
	</form>
</body>
</html>