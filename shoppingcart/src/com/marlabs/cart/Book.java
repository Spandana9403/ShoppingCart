package com.marlabs.cart;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Book {

	public String username;
	public String title;
	public Connection c;
	/**
	 * @return the username
	 */
	public String getUsername() {
		return username;
	}
	/**
	 * @param username the username to set
	 */
	public void setUsername(String username) {
		this.username = username;
	}
	

	/**
	 * @return the title
	 */
	public String getTitle() {
		return title;
	}
	/**
	 * @param title the title to set
	 */
	public void setTitle(String title) {
		this.title = title;
	}
	
	public Book()
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			this.c=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","ahmedkhan50");
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public Book(String username,String title)
	{
		this.username=username;
		this.title=title;
	}
}
