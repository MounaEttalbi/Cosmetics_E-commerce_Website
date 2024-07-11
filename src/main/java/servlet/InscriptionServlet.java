package servlet;

import java.io.IOException;
import java.sql.SQLException;

import dao.AccountDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/InscriptionServlet")
public class InscriptionServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    public InscriptionServlet() {
        super();
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	int id =Integer.parseInt( request.getParameter("supprimer"));
    	// Create AccountDAO instance
        AccountDAO accountDAO = new AccountDAO();

        try {
                accountDAO.deleteUser(id);
                response.sendRedirect("gererCompte");
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Database error");
        }
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fullName = request.getParameter("fullname");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String errorMessage = null;

        // Create AccountDAO instance
        AccountDAO accountDAO = new AccountDAO();

        try {
            // Try to add the user
            if (accountDAO.addUser(fullName, username, password)) {
                response.sendRedirect("index.jsp");
            } else {
                // User with the same username already exists
                errorMessage = "Username already exists";
                response.sendRedirect("inscription.jsp?error=" + errorMessage);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Database error");
        }
    }
}

