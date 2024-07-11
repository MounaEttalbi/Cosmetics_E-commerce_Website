package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
	private static final String URL = "jdbc:mysql://localhost:3306/ecommerce";
    private static final String USERNAME = "user";
    private static final String PASSWORD = "password";

    public static Connection getConnection() throws SQLException {
        Connection connection = null;
        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish the database connection
            connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        } catch (ClassNotFoundException e) {
            e.printStackTrace(); // Handle ClassNotFoundException appropriately
        }
        return connection;
    }
}
