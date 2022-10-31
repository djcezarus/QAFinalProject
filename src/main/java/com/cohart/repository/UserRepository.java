package com.cohart.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.cohart.db.DBUtils;
import com.cohart.to.User;

public class UserRepository {

	
//============= ADD USER IN DATABASE (FUNCTION) ==========================================
	public void save(User user) throws Exception {

		Connection conn = DBUtils.getConnection();

		PreparedStatement pstmt = conn.prepareStatement("insert into user values(?, ?, ?, ?, ?)");

		pstmt.setString(1, user.getUsername());
		pstmt.setString(2, user.getPassword());
		pstmt.setString(3, user.getFirstName());
		pstmt.setString(4, user.getLastName());
		pstmt.setString(5, user.getEmail());

		pstmt.execute();
	}
//==================== Validate credentials (Function)==========================
	
public User validateUserCredentials(String username, String password) throws Exception {
		
		//boolean loginStatus = false;
		User user = null;
		
		Connection conn = DBUtils.getConnection();	
		PreparedStatement pstmt =  conn.prepareStatement("select * from user where username = ? and password = ?");
		
		pstmt.setString(1, username);
		pstmt.setString(2, password);
		
		ResultSet rs = pstmt.executeQuery();

		if(rs.next()) {
			username = rs.getString(1);
			password = rs.getString(2);
			String fName = rs.getString(3);
			String lName =rs.getString(4);
			String emailAddress = rs.getString(5);
			
			user = new User(username, password, fName, lName, emailAddress);
		}
		
		return user;
	}
//================== Get ALL Users from database (Function)  ===============================================
	
public List<User> getUsers() throws Exception {
	
	List<User> users = new ArrayList<User>();
	
	Connection conn = DBUtils.getConnection();	
	PreparedStatement pstmt =  conn.prepareStatement("select * from user");
	
	ResultSet rs = pstmt.executeQuery();
	
	while(rs.next()) {
		
		String username = rs.getString(1);
		String password = rs.getString(2);
		String fName = rs.getString(3);
		String lName =rs.getString(4);
		String emailAddress = rs.getString(5);
		
		User user = new User(username, password, fName, lName, emailAddress);
		users.add(user);
	}
	
	return users;

	}
	// ================ UPDATE USER FROM DATABASE (FUNCTION)=========================
	
	public void update(User user) throws Exception {
		Connection conn = DBUtils.getConnection();

		PreparedStatement pstmt = conn.prepareStatement("update user set username=?, password=?, firstName=?,lastName=?, email=? ");
		
		pstmt.setString(1, user.getUsername());
		pstmt.setString(2, user.getPassword());
		pstmt.setString(3, user.getFirstName());
		pstmt.setString(4, user.getLastName());
		pstmt.setString(5, user.getEmail());
	
		pstmt.executeUpdate();
		
	}
	
	
	// ================ DELETE USER FROM DATABASE (FUNCTION)=========================
	
	public void deleteUser(String username) throws Exception {

		Connection conn = DBUtils.getConnection();
		PreparedStatement pstmt = conn.prepareStatement("delete from user where username=? ");

		pstmt.setString(1, username);

		pstmt.execute();
	}
	 
	//================ GET SPECIFIC USER FROM DATA BASE (FUNCTION)=====================
	public User getUser(String username) throws Exception {

		User user = null;

		Connection conn = DBUtils.getConnection();	
		PreparedStatement pstmt =  conn.prepareStatement("select * from user where username = ?");

		pstmt.setString(1, username);
		ResultSet rs = pstmt.executeQuery();

		if(rs.next()) {
			String uname = rs.getString(1);
			String password = rs.getString(2);
			String fName = rs.getString(3);
			String lName =rs.getString(4);
			String emailAddress = rs.getString(5);

			user = new User(uname, password, fName, lName, emailAddress);
		}


		return user;
	}
}