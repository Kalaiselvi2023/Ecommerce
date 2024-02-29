<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	height: 100px;
	display: flex;
	align-items: center;
	justify-content: center;
	background-image:
		url(https://www.seologist.com/media/blog-image/SEO-Mistakes-of-e-Commerce-Websites.jpeg);
	background-repeat: no-repeat;
	background-size: cover;
}

.container {
	display: flex;
	flex-direction: column;
	width: 300px;
	padding: 10px;
	border-radius: 5px;
	margin-top: 100%;
}

input {
	margin: 5px 0px;
	height: 35px;
	padding: 7px;
}

button {
	height: 35px;
	margin: 5px 0px;
	background-color: purple;
	border: none;
	border-radius: 5px;
	color: white;
}

button:hover {
	background-color: blue;
}

h1 {
	margin-left: 75px;
	color: red;
}

h2 {
	color: blue;
}
</style>
</head>
<body>

	<form action="#" method="post">

		<div class="container">
			<h1>Login</h1>
			<h2>Username</h2>
			<input type="text" name="n1"><br>
			<br>
			<h2>Password</h2>
			<input type="text" name="n2"><br>
			<br>
			<button>submit</button>
		</div>
	</form>

	<%
String a=request.getParameter("n1");
String b=request.getParameter("n2");

if(a!=null && b!=null){
	if(a.equals("admin")&&b.equals("admin"))
	{
		response.sendRedirect("adminhome.jsp");
	}
	else{
		response.sendRedirect("admin.jsp");
	}
}
%>
</body>
</html>