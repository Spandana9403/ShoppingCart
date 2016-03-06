package com.marlabs.cart;

import javax.ws.rs.Path;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.ws.rs.GET;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;


@Path("bookservice")
public class Bookservice {

	@GET 
	@Path("/store/{a}/{b}")
	@Produces(MediaType.TEXT_PLAIN)
	public String store(@PathParam("a") String a,@PathParam("b") String b)
	{
		String username=a;
		String title=b;
		
		Book book=new Book();
		book.username=username;
		book.title=title;
		
		String s="";
		
		try {
			  Connection c1=book.c;
			  PreparedStatement p=c1.prepareStatement("insert into bookdetails values(?,?)");
			  p.setString(1, book.username);
			  p.setString(2, book.title);
			
			  int a1=p.executeUpdate();
		      
			  if(a1>0)
				{
					s="successful";
				}
				else
				{
					s="unsuccessful";
				}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return s;	
	}
	
	
	@GET 
	@Path("/store1/{a}/{b}")
	@Produces(MediaType.TEXT_PLAIN)
	public String store1(@PathParam("a") String a,@PathParam("b") String b)
	{
		String username=a;
		String title=b;
		
		Book book=new Book();
		book.username=username;
		book.title=title;
		
		String s="";
		
		try {
			  Connection c1=book.c;
			  PreparedStatement p=c1.prepareStatement("insert into wishlist values(?,?)");
			  p.setString(1, book.username);
			  p.setString(2, book.title);
			
			  int a1=p.executeUpdate();
		      
			  if(a1>0)
				{
					s="successful";
				}
				else
				{
					s="unsuccessful";
				}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return s;	
	}
	
}
