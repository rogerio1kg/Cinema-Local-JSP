package com.services.login.bean;

import java.io.Serializable;

public class LoginBean implements Serializable{

	
	
	
	private static long serialVersionUID = 1L;
	private String username;
	private String password;
    protected int id;
	public String getUsername() {
		return username;
	}
	
	public void setUsername(String username) {
		this.username=username;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password=password;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	
}
