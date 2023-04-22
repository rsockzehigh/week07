package projects.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import projects.exception.DbException;

public  class DbConnection {

	
		private static final String SCHEMA = "projects"; //constants to change password
		private static final String USER = "projects"; //constants
		private static final String PASSWORD = "projects"; //constants
		private static final String HOST = "localhost"; //constants
		private static final int PORT = 3306; //constants
		
		public static java.sql.Connection getConnection() {
			String url = String.format("jdbc:mysql://%s:%d/%s?user=%s&password=%s&useSSL=false", HOST, PORT, SCHEMA, USER, //2.format string with format specifier in order!
					PASSWORD); // connection string
			System.out.println("Connecting with url=" + url);
			
			try {
				
				Connection conn = DriverManager.getConnection(url); //ask the driver to get connection
				System.out.println("Successfully obtained connection");
				return conn;			
			} catch (SQLException e) {
				System.out.println("Error getting connection.");
				throw new DbException(e);
			}	


	
	
	}
}



