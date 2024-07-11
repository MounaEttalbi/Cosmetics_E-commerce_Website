package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import pojo.Product;

public class ProductDAO {
    private static final String URL = "jdbc:mysql://localhost:3306/ecommerce";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "";


    public Connection getConnection() throws SQLException {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }

    public List<Product> getAllProducts() throws SQLException {
        List<Product> products = new ArrayList<>();
        String sql = "SELECT * FROM products";

        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(sql);
             ResultSet resultSet = statement.executeQuery()) {
            while (resultSet.next()) {
                Product product = new Product();
                product.setId(resultSet.getInt("id"));
                product.setName(resultSet.getString("name"));
                product.setImageUrl(resultSet.getString("image_url"));
                product.setPrice(resultSet.getDouble("price"));
                product.setDescription(resultSet.getString("description"));
                product.setMarque(resultSet.getString("marque"));
                products.add(product);
            }
        }

        return products;
    }

    public void insertProduct(Product product) throws SQLException {
        String sql = "INSERT INTO products (id, name, image_url, price, description, marque) VALUES (?, ?, ?, ?, ?, ?)";

        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setInt(1, product.getId());
            statement.setString(2, product.getName());
            statement.setString(3, product.getImageUrl());
            statement.setDouble(4, product.getPrice());
            statement.setString(5, product.getDescription());
            statement.setString(6, product.getMarque());

            statement.executeUpdate();
        }
    }

    public boolean productExists(int id) throws SQLException {
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement("SELECT COUNT(*) FROM products WHERE id = ?")) {
            statement.setInt(1, id);
            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    int count = resultSet.getInt(1);
                    return count > 0;
                }
            }
        }
        return false;
    }

    public List<Product> searchProducts(String searchTerm)  throws SQLException{
        List<Product> searchResults = new ArrayList<>();
        
        // Vérifier si le terme de recherche est vide
        if (searchTerm == null || searchTerm.trim().isEmpty()) {
            return searchResults; // Retourner une liste vide si le terme de recherche est vide
        }

        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement("SELECT * FROM products WHERE name LIKE ? OR marque LIKE ?")) {
            statement.setString(1, "%" + searchTerm + "%");
            statement.setString(2, "%" + searchTerm + "%");

            try (ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    Product product = new Product();
                    product.setId(resultSet.getInt("id"));
                    product.setName(resultSet.getString("name"));
                    product.setImageUrl(resultSet.getString("image_url"));
                    product.setPrice(resultSet.getDouble("price"));
                    product.setDescription(resultSet.getString("description"));
                    product.setMarque(resultSet.getString("marque"));
                    searchResults.add(product);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return searchResults;
    }
    public boolean deleteProduct(int productId) throws SQLException {
        // Vérifier si le produit existe avant de le supprimer
        if (!productExists(productId)) {
            throw new IllegalArgumentException("Le produit avec l'ID " + productId + " n'existe pas.");
        }

        String sql = "DELETE FROM Products WHERE id = ?";

        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setInt(1, productId);
            int rowsAffected = statement.executeUpdate();
            
            // Vérifier si la suppression a réussi en vérifiant le nombre de lignes affectées
            return rowsAffected > 0;
        }
    }
    public Product getProductById(int productId) throws SQLException {
        String sql = "SELECT * FROM products WHERE id = ?";
        try (Connection connection = getConnection();
                PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setInt(1, productId);
            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    Product product = new Product();
                    product.setId(resultSet.getInt("id"));
                    product.setName(resultSet.getString("name"));
                    product.setImageUrl(resultSet.getString("image_url"));
                    product.setPrice(resultSet.getDouble("price"));
                    product.setDescription(resultSet.getString("description"));
                    product.setMarque(resultSet.getString("marque"));
                    // Ajoutez d'autres propriétés selon votre modèle de données
                    return product;
                }
            }
        }
        return null;
    }
    public void updateProduct(Product product) throws SQLException {
        String sql = "UPDATE products SET name = ?, image_url = ?, price = ?, description = ?, marque = ? WHERE id = ?";

        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, product.getName());
            statement.setString(2, product.getImageUrl());
            statement.setDouble(3, product.getPrice());
            statement.setString(4, product.getDescription());
            statement.setString(5, product.getMarque());
            statement.setInt(6, product.getId());

            statement.executeUpdate();
        }
    }
}

