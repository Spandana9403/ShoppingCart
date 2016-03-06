<%@ page import="java.sql.*" %>

<%!

Connection c;

public void jspInit()
{
	   try
		{
			Class.forName("com.mysql.jdbc.Driver");
			c=DriverManager.getConnection("jdbc:mysql://localhost:3306/library", "root", "ahmedkhan50");
		}catch(Exception e){e.printStackTrace();}
}
 
%>

<%
   int wishcount=Integer.parseInt(request.getParameter("wishco"));
   String username=(String)session.getAttribute("username");
   try
   {
   PreparedStatement p=c.prepareStatement("update user1 set wishlistcount=? where username=?");
   
   p.setInt(1, wishcount);
   p.setString(2, username);
   
   int i=p.executeUpdate();
   out.print(i);
   }catch(SQLException e){e.printStackTrace();}
   
%>