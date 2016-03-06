<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<body style="background-color:black;">
 <%!    
Connection c;
Statement st;
String data="";
public void jspInit()  //overiding jsp 
{	   try
		{Class.forName("com.mysql.jdbc.Driver");
			c=DriverManager.getConnection("jdbc:mysql://localhost:3306/library", "root", "ahmedkhan50");
		}catch(Exception e){e.printStackTrace();}
}
%>

<%

String username=(String)session.getAttribute("username");

PreparedStatement p=c.prepareStatement("select title from wishlist where username=?");

p.setString(1, username);

ResultSet rs=p.executeQuery();
String s="";
while(rs.next())
{
	s=s+rs.getString(1)+",";
}

String [] titles=s.split(",");
%>

<h3 style="color:white;">Welcome, <%=username %> To Your WishList</h3>
<p style="color:white;">You Have <%=titles.length %> Items In Your WishList:</p>
<%
for(int i=0;i<titles.length;i++)
{     
	%>
	
	<div style="color:white;border:1px solid yellow;width:60px;margin-top:4px;text-align:center;"><%=titles[i] %></div>
	<img src="images/<%=titles[i] %>" width="300px" height="160px">
	
	<%} %>
</body>