<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<style>
body{
background-image:
		url(https://www.insightssuccess.in/wp-content/uploads/2020/12/785054-ecommerce-istock-020119.jpg);
	background-repeat: no-repeat;
	background-size: cover;
	}
h2{
margin-left:38%;
}
table{
margin-left:38%;
}	
label{
color:yellow;
}
input{
margin-top:10%;
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
				<li class="nav-item"><a class="nav-link"
					href="productview.jsp">Product View</a></li>	
			</ul>
		</div>
	</nav>
	
<h2>UPDATE - PRODUCT</h2>
	
	<form action="#" method="post">
	<table>
	   <tr>
		<td><label>Productid</label></td><td><input type="text" name="n1"><br><br></td>
		</tr>
		<tr>
		<td><label>Price</label></td><td><input type="text" name="n3"><br><br></td>
		 </tr>
		 <tr>
		 <td> <label>Quantity</label></td><td><input type="text" name="n4"><br><br></td> 
		  </tr>
		  <tr>
		 <td> <label>image</label></td><td><input type="text" name="n5"><br><br></td>
		  </tr>
		  <tr><td> <input type="submit"></td></tr>
		</table>
	</form>
	
<%
	String a=request.getParameter("n1");
	String b=request.getParameter("n2");
	String c=request.getParameter("n3");
	String d=request.getParameter("n4");
		
	if(a!=null && b!=null && c!=null && d!=null){
		try{
			//choose database
			Class.forName("com.mysql.jdbc.Driver");
			//connect to the database
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbexample","root","root");
			//Statement to understand sql query
			Statement st=con.createStatement();
			st.executeUpdate("update sp set price="+b+",quantity="+c+",image='"+d+"' where pid="+a+" ");
			out.println("<script>alert('Updated sucessfully')</script>");
		}
		catch(SQLException e)
		{
			out.println(e);
		}
		
}
		
%>
</body>
</html>