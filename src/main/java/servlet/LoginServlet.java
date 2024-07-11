
package servlet;

import java.io.IOException;
import java.sql.SQLException;
import dao.AccountDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
        String password = request.getParameter("password");
        String errorMessage = null;
        
        AccountDAO accountDAO = new AccountDAO();
        try {
            boolean isValidUser = accountDAO.validateUser(username, password);
            
            if (isValidUser) {
                // Create a session for the user
                HttpSession session = request.getSession();
                // Store the username in the session
                session.setAttribute("username", username);
                if (username.equals("admin") && password.equals("admin")) {
                    response.sendRedirect("acc_admin.jsp");
                }
                else
                response.sendRedirect("index.jsp");
              
                } else {
            	errorMessage = "Invalid username or password";
            	response.sendRedirect("login.jsp?error=" + errorMessage);
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Handle database errors
            // Redirect to error page or display an error message
        }
	}
	
	
	

}
