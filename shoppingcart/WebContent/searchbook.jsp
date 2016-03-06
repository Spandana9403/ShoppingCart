<%@page import="java.sql.*"%>
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
<%              try
              {
            	   st=c.createStatement(); 
    	           ResultSet rs=st.executeQuery("select title from books");    
    	           while(rs.next())
    	           {
    	        	   data=data+rs.getString(1)+",";
    	           }
              }catch(Exception e){e.printStackTrace();}
               out.print(data);
               
               
%>