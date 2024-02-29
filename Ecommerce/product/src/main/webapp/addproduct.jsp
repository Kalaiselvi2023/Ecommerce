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
	background-image:
		url(https://images.pexels.com/photos/170811/pexels-photo-170811.jpeg?cs=srgb&dl=road-car-vehicle-170811.jpg&fm=jpg);
	background-repeat: no-repeat;
	background-size: cover;
}

label {
	color: white;
}
table{
margin-left:35%;
margin-top:5%;
}
h2{
margin-left:35%;
color:white;
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
<h2>ADD - PRODUCT</h2>
	<form action="#" method="post">
	<table>
	   <tr>
		<td><label>Productid</label></td><td><input type="text" name="n1"><br><br></td>
		</tr>
		<tr>
		<td><label>Productname</label></td><td><input type="text" name="n2"><br><br></td>
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
String f=request.getParameter("n5");
if(a!=null && b!=null && c!=null && d!=null && f!=null){

		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbexample","root","root");
			PreparedStatement st=con.prepareStatement("insert into product values(?,?,?,?,?)");
			st.setString(1,a);
			st.setString(2,b);
			st.setString(3,c);
			st.setString(4,d);
			st.setString(5,f);
			st.executeUpdate();
			out.println("<script>alert('insert successfully');</script>");
		}
	
		catch(SQLException e)
		{
			
		}

}


%>
	
</body>
</html>