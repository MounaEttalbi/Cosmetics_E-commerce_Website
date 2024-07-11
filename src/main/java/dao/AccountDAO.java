package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AccountDAO {
	public boolean allUser() throws SQLException {
        String sql = "SELECT * FROM account";
        try (Connection connection = ConnectionFactory.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            try (ResultSet resultSet = statement.executeQuery()) {
                return resultSet.next(); // Returns true if a user exists with the given credentials
            }
        }
    }
	public boolean validateUser(String username, String password) throws SQLException {
        String sql = "SELECT * FROM account WHERE username = ? AND password = ?";
        try (Connection connection = ConnectionFactory.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, username);
            statement.setString(2, password);
            try (ResultSet resultSet = statement.executeQuery()) {
                return resultSet.next(); // Returns true if a user exists with the given credentials
            }
        }
    }
	
	public boolean addUser(String fullName, String username, String password) throws SQLException {
        if (isUsernameExists(username)) {
            return false; 
        }
        String query = "INSERT INTO account (username, password, role, fullname) VALUES (?, ?, ?, ?)";
        try (Connection connection = ConnectionFactory.getConnection()) {
        	PreparedStatement statement = connection.prepareStatement(query);
        	String role = "user";
            statement.setString(1, username);
            statement.setString(2, password);
            statement.setString(3, role);
            statement.setString(4, fullName);
            int rowsInserted = statement.executeUpdate();
            return rowsInserted > 0;
        }
    }
	
	public boolean deleteUser(int id) throws SQLException {
        
        String query = "delete from account where id=? ";
        try (Connection connection = ConnectionFactory.getConnection()) {
        	PreparedStatement statement = connection.prepareStatement(query);
            statement.setInt(1, id);
            int rowsInserted = statement.executeUpdate();
            return rowsInserted > 0;
        }
    }

    private boolean isUsernameExists(String username) throws SQLException {
        String query = "SELECT COUNT(*) FROM account WHERE username = ?";
        try (Connection connection = ConnectionFactory.getConnection()) {
        	PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, username);
            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    int count = resultSet.getInt(1);
                    return count > 0;
                }
            }
        }
        return false;
    }
}
