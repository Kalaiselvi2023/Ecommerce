<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
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
	background-image:url(https://uploads-ssl.webflow.com/614d610a3dd0725153e51ded/6222149bfbdb5b0645ae4c0e_eCommerce-Website-Components-photo.jpeg);
	background-repeat: no-repeat;
	background-size:cover;
}
label{
color: black;
margin-left:38%;
margin-top:5%;
}
input{
border:1px solid black;
}
div{
margin-left:43%;
}
h2{
margin-left:35%;
margin-top:10%;
color:white;
}
</style>
</head>

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
				<li class="nav-item"><a class="nav-link"
					href="productview.jsp">Product View</a></li>	
			</ul>
		</div>
	</nav>
<h2>DELETE - PRODUCT</h2>
	<form action="#" method="post">
	<label>pid : </label><input type="text" name="n1"><br><br> 
	<div>
	<input type="submit">
	</div>
	</form>

	<%
String a=request.getParameter("n1");

if(a!=null){

		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbexample","root","root");
			Statement st=con.createStatement();
			st.executeUpdate("delete from product where pid= "+a+"");
			out.println("<script>alert('product remove successfully');</script>");
		}
	
		catch(SQLException e)
		{
			
		}

}


%>

</body>
</html>