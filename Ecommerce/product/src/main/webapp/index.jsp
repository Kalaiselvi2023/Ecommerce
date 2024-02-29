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
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<div>Welcome to Home page......</div>
	<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbexample","root","root");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from product");
	while(rs.next())
	{%>
	<form action="details.jsp" method="post">
		<div class="row">
			<div class="col-sm-3 ">
				<input type="text" value="<%=rs.getString(2) %>" name="n1">
			</div>
			<div class="col-sm-3 ">
				<input type="text" value="<%=rs.getInt(3) %>" name="n2">
			</div>
			<div class="col-sm-3 ">
				<input type="hidden" value="<%=rs.getString(5) %>" name="n3"><img
					src="<%=rs.getString(5) %>" width="200px" height="200px">
			</div>
			<div class="col-sm-3 ">
				<input type="submit">
			</div>

		</div>
	</form>

	<% }
	
	
	
	
}
catch(Exception e)
{
	out.println(e);
}




%>
</body>
</html>