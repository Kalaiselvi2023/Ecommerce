<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%

String a=request.getParameter("n1");
String b=request.getParameter("n2");
String c=request.getParameter("n3");

out.println(a+"<br>");
out.println(b+"<br>");



%>
	<img src="<%=c %>" width="200px" height="200px">
	<br>
	<br>
	<form action="#" method="post">
		Quantity<input type="text" name="n4"><br>
		<br> <input type="submit">

	</form>


	<%
String d=request.getParameter("n4");
if(d!=null)
{
try
{
	int f1=0,f2=0;
Class.forName("com.mysql.jdbc.Driver");
	
	Connection con=DriverManager.getConnection
	("jdbc:mysql://localhost:3306/dbexample","root","root");
	
	Statement st=con.createStatement(); 
	ResultSet rs=st.executeQuery("select * from product where pname='"+a+"' ");
	if(rs.next())
	{
		f1=rs.getInt(4);
		f2=Integer.parseInt(d);
	}
	
	if(f1>f2)
	{
		int f3=f1-f2;
		st.executeUpdate("insert into order values('"+a+"','"+b+"',"+f2+")");
		st.executeUpdate("update product set quantity='"+f3+"' where pname='"+a+"'");
		
		
	}
	else
	{
		out.println("out stock");
	}
}
catch(Exception e)
{
	out.println(e);
}

}
%>


</body>
</html>