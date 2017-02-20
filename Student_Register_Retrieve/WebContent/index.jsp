<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Registration</title>
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

input[type=button] {
	width: 100%;
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type=button]:hover {
	background-color: #45a049;
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

h1 {
	font-family: sans-serif;
	text-align: center;
}
</style>

<script type="text/javascript">
	function validateForm() {

		var id = document.getElementById("id").value;
		var username = document.getElementById("username").value;
		var password = document.getElementById("password").value;
		var city = document.getElementById("city").value;
		var zip = document.getElementById("zip").value;
		var email = document.getElementById("email").value;

		if (id != "" && username != "" && password != "" && city != ""
				&& zip != "" && email != "") {
			document.RegisterForm.submit();

		} else {
			alert("Please, Enter all the details for Registration!!")
		}
	}

	function checkId() {
		//var id = document.getElementById("id");
		var filter = new RegExp('^[0-9]+$');
		if (!filter.test(id.value)) {
			alert("Please, provide a valid Roll Number");
			return false;
		}
	}

	function checkPassword() {
		//var password = document.getElementById("password")
		var filter1 = new RegExp(
				"^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{8,})");
		if (!filter1.test(password.value)) {
			alert("Please, provide a valid Password with at least 1 Uppercase Alphabet, 1 Lowercase Alphabet, 1 Number and 1 Special Character)");
			return false;
		}
	}
	
	function checkZip() {
		//var zip = document.getElementById("zip");
		var filter2 = new RegExp('/^\b\d{5}(-\d{4})?\b$/');
		if (!filter2.test(zip.value)) {
			alert("Please, provide a valid Zip Code");
			return false;
		}
	}


	function checkEmail() {

		//var email = document.getElementById("email");
		var filter3 = new RegExp('/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/');

		if (!filter3.test(email.value)) {
			alert("Please, provide a valid email address"); 
			return false;
		}
	}
</script>
</head>
<body>
	<h1>Student Registration Page</h1>
	<div>
		<form action="RegisterServlet" method="post" name="RegisterForm">
			Student Roll Number: <br> <input type="text" name="id"
				placeholder="Enter Roll Number..." id="id" onblur="checkId();"><br>
			<br> Username: <br> <input type="text" name="username"
				placeholder="Enter Username..." id="username"><br> <br>
			Password: <br> <input type="password" name="password"
				placeholder="Enter Password..." id="password"
				onblur="checkPassword();"><br> <br> City: <br>
			<input type="text" name="city" placeholder="Enter City..." id="city"><br>
			<br> Zip: <br> <input type="text" name="zip"
				placeholder="Enter Zip..." id="zip" onblur="checkZip();"><br> <br>
			E-mail: <br> <input type="text" name="email"
				placeholder="Enter E-mail..." id="email" onblur="checkEmail();"><br>
			<br> <input type="button" value="Register"
				onclick="validateForm();"/>
		</form>
		<h6 align="center">OR</h6>
		<form action="login.jsp" method="get" name = "LoginForm">
		<input type = "submit" value = "Login" >
		</form>
	</div>
</body>
</html>