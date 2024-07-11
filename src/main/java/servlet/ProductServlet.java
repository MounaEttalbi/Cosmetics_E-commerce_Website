package servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;



import dao.ProductDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import pojo.Product;

@WebServlet("/ProductServlet")
public class ProductServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public ProductServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductDAO productDAO = new ProductDAO();
        try {
            List<Product> products = productDAO.getAllProducts();
            request.setAttribute("products", products);
            request.getRequestDispatcher("/products.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action != null && !action.isEmpty()) {
            switch (action) {
                case "add":
                    addProduct(request, response);
                    break;
                case "search":
                    searchProduct(request, response);
                    break;
                case "delete":
                    deleteProduct(request, response);
                    break;  
                case "edit":
                    editProduct(request, response);
                    break;
                case "update":
                    updateProduct(request, response);
                    break; // Ajoutez un cas pour gérer la mise à jour du produit
                default:
                    response.sendRedirect(request.getContextPath() + "/ProductServlet");
                    break;
            }
        } else {
            response.sendRedirect(request.getContextPath() + "/ProductServlet");
        }
    }
    private void addProduct(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            String name = request.getParameter("name");
            String imageUrl = request.getParameter("imageUrl");
            double price = Double.parseDouble(request.getParameter("price"));
            String description = request.getParameter("description");
            String marque = request.getParameter("marque");

            ProductDAO productDAO = new ProductDAO();

            if (productDAO.productExists(id)) {
                request.setAttribute("message", "Erreur : Un produit avec le même ID existe déjà !");
            } else {
                Product product = new Product();
                product.setId(id);
                product.setName(name);
                product.setImageUrl(imageUrl);
                product.setPrice(price);
                product.setDescription(description);
                product.setMarque(marque);

                productDAO.insertProduct(product);
            }

            response.sendRedirect(request.getContextPath() + "/ProductServlet");
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        } catch (NumberFormatException e) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "ID ou prix invalide");
        }
    }

    private void searchProduct(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String searchTerm = request.getParameter("search");

            ProductDAO productDAO = new ProductDAO();
            List<Product> searchResults = null;
            
            // Si le terme de recherche est vide, recherchez tous les produits
            if (searchTerm == null || searchTerm.trim().isEmpty()) {
                searchResults = productDAO.getAllProducts();
            } else {
                searchResults = productDAO.searchProducts(searchTerm);
            }
            
            request.setAttribute("searchResults", searchResults);
            request.getRequestDispatcher("/products.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        }
    }
    
    private void deleteProduct(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int productId = Integer.parseInt(request.getParameter("productId"));

            // Créez une instance de ProductDAO
            ProductDAO productDAO = new ProductDAO();

            // Appelez directement la méthode de suppression dans ProductDAO en utilisant l'ID du produit
            boolean success = productDAO.deleteProduct(productId);

            if (success) {
                // Si la suppression réussit, redirigez vers la page principale avec succès
                response.sendRedirect(request.getContextPath() + "/ProductServlet");
            } else {
                // Si la suppression échoue, renvoyez une erreur interne du serveur
                response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "La suppression du produit a échoué.");
            }
        } catch (NumberFormatException e) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "ID de produit invalide");
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        }
    }

    private void editProduct(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int productId = Integer.parseInt(request.getParameter("productId"));

            // Créez une instance de ProductDAO
            ProductDAO productDAO = new ProductDAO();

            // Obtenez le produit à modifier en fonction de son ID
            Product product = productDAO.getProductById(productId);

            // Si le produit existe, envoyez-le à la page de modification
            if (product != null) {
                // Définissez l'attribut "product" dans l'objet request
                request.setAttribute("product", product);

                // Redirigez vers la page JSP editProduct.jsp
                request.getRequestDispatcher("/editProduct.jsp").forward(request, response);
            } else {
                // Si le produit n'existe pas, envoyez une erreur 404
                response.sendError(HttpServletResponse.SC_NOT_FOUND, "Le produit avec l'ID spécifié n'existe pas.");
            }
        } catch (NumberFormatException e) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "ID de produit invalide");
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        }
    }
    private void updateProduct(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int id = Integer.parseInt(request.getParameter("productId"));
            String name = request.getParameter("name");
            String imageUrl = request.getParameter("imageUrl");
            double price = Double.parseDouble(request.getParameter("price"));
            String description = request.getParameter("description");
            String marque = request.getParameter("marque");

            ProductDAO productDAO = new ProductDAO();
            Product updatedProduct = new Product(id, name, imageUrl, price, description, marque);

            productDAO.updateProduct(updatedProduct);
            response.sendRedirect(request.getContextPath() + "/ProductServlet");
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        } catch (NumberFormatException e) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "ID ou prix invalide");
        }
    }
}
