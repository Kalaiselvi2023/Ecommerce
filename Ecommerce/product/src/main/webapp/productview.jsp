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
	<center>
	
	<body>
        <style>
            body {
              background-color: skyblue;
            }
            </style>
            </body>
<br>
<br>				
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<div class="container">
	      <form action="#" method="post">
		       <table>
					<tr>
						<td><input  class="s2"type="text" name="n1" placeholder="Search Product.."></td>
						<td class="s1"><input type="submit" value="Search" ></td>
					</tr>
					
				</table>
			</form>
			</center>
	</div>
	<br>
	<br>
	<br>
	<%
		String a=request.getParameter("n1");
	
		if(a!=null){
			try{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbexample","root","root");
				Statement st=con.createStatement();
				ResultSet rs=st.executeQuery("select * from product where pname like '"+a+"%'");
				while(rs.next()){
					
					%>
					<style>
table, th, td {
  border:1px solid black;
}
</style>
					<center>
					<div class="load">
					<center>
            	        <table class="b1">
            	        <table style="width:80%">
							<tr>
							
								<th>Product Id</th>
								<th>Product Name</th>
								<th>Price</th>
								<th>Quantity</th>
								<th>Image</th>
													
							</tr>
							</center>
							<tr>
								<td><%=rs.getInt(1) %></td>
								<td><%=rs.getString(2) %></td>
								<td><%=rs.getInt(3) %></td>
								<td><%=rs.getInt(4) %></td>
								<td><img src="<%=rs.getString(5) %>" width="200px" height="200px"></td>
							</tr>
					   </table>
			       </div>					
				<%}
			}
			catch(SQLException e){
				out.println(e);
			}
		}
	
	%>	