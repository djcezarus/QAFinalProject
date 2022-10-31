package com.cohart.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBUtils {

	public static Connection getConnection() throws Exception {
// ==================== MySQL Connector ====================================:port/nameoftheschema", user, password ============
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1", "root", "1124");

		return conn;
	}

}
