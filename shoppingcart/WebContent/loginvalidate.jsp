<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
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
  String username=request.getParameter("username");
  String password=request.getParameter("password");
  PreparedStatement p=c.prepareStatement("select firstname,username,pass,cartcount,wishlistcount from user1 where username=? and pass=?");
  
  p.setString(1, username);
  p.setString(2, password);
  
  ResultSet rs=p.executeQuery();
  
  if(rs.next())
  {
	 out.print(rs.getString(1)+","+rs.getString(2)+","+rs.getInt(4)+","+rs.getInt(5));
	 session.setAttribute("cart", rs.getString(4));
	 session.setAttribute("username", username);
  }
  
  else
  {
	  out.print("0");
  }
%>
