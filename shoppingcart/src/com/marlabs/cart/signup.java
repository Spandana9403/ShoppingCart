package com.marlabs.cart;

public class signup {

	public String username;
	public String pass;
	public String firstname;
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
	 * @return the password
	 */
	public String getPass() {
		return pass;
	}
	/**
	 * @param password the password to set
	 */
	public void setPass(String password) {
		this.pass = password;
	}
	/**
	 * @return the firstname
	 */
	public String getFirstname() {
		return firstname;
	}
	/**
	 * @param firstname the firstname to set
	 */
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	
	public signup(String username,String pass,String firstname)
	{
		this.username=username;
		this.pass=pass;
		this.firstname=firstname;
	}
	
	public signup()
	{
		
	}
}
