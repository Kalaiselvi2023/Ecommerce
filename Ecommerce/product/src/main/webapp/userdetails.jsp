<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>	
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<style>
body {
	background-image:url("https://framerusercontent.com/images/0Kx6h37z8sVJTxFZE93ukQJT52s.jpeg");
	background-repeat: no-repeat;
	background-size: cover;
}
h2{
margin-left:38%;
color:blue;
margin-top:5%;
}
h2:hover{
color:red;
}
table{
margin-left:38%;
}	
label{
margin-bottom:15%;
color:yellow;
}
label:hover{
color:skyblue;
}
</style>
</head>
<body>

	<nav class="navbar navbar-expand-sm bg-light">
		<div class="container-fluid">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="addproduct.jsp">Add
						Product</a></li>
				<li class="nav-item"><a class="nav-link"
					href="deleteproduct.jsp">Delete Product</a></li>
				<li class="nav-item"><a class="nav-link"
					href="update.jsp">Update Product</a></li>
				<li class="nav-item"><a class="nav-link" href="userdetails.jsp">User
						Details</a></li>
				<li class="nav-item"><a class="nav-link"
					href="orderdetails.jsp">Order Details</a></li>
				<li class="nav-item"><a class="nav-link" href="productview.jsp">ProductView
						</a></li>	
			</ul>
		</div>
	</nav>

<h2>USER - DETAILS</h2>

<form action="#" method="post">
	<table>
	   <tr>
		<td><label>Name :</label></td><td><input type="text" name="n1"><br><br></td>
		</tr>
		<tr>
		<td><label>Location :</label></td><td><input type="text" name="n2"><br><br></td>
		</tr>
		<tr>
		<td><label>Mobile no :</label></td><td><input type="text" name="n3"><br><br></td>
		 </tr>
		  <tr><td> <input type="submit"></td></tr>
		</table>
	</form>

<%
	String a=request.getParameter("n1");
	String b=request.getParameter("n2");
	String c=request.getParameter("n3");
if(a!=null && b!=null && c!=null )
{
	try{
				
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbexample","root","root");
		PreparedStatement pt=con.prepareStatement("insert into sp values(?,?,?)");
		pt.setString(1,a);
		pt.setString(2,b);
		pt.setString(3,c);
        out.println("<script>alert('insert sucessfully')</script>");
	  }
	catch(SQLException e)
	{
				out.println(e);
	}
}
%>
</body>
</html>