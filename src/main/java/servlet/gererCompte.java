package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import pojo.Account;

/**
 * Servlet implementation class gererCompte
 */
@WebServlet("/gererCompte")
public class gererCompte extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public gererCompte() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fullName ;
        String username ;
        String password ;
        int id;
        List <Account> liste=new ArrayList<>();
		
  	  //Code de connexion à la base de données.
  		 Connection connexion=null;
  		 ResultSet resultat = null;
  		 Statement stat = null;
        String sql = "SELECT * FROM account";
     // Chargement du driver
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
        }

        try {
            connexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root", "");
        }  catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
        try {
			stat = connexion.createStatement();
				resultat = stat.executeQuery(sql);
				while (resultat.next()) {
	                id=resultat.getInt("id");
					fullName=resultat.getString("fullName");
			        username =resultat.getString("username");
			        password=resultat.getString("password");
	                Account c = new Account();
	                c.setId(id);
	                c.setFullname(fullName);
	                c.setPassword(password);
	                c.setUsername(username);
	                c.setRole("user");
	              
	                liste.add(c);
	            }
	            request.setAttribute("liste", liste);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
        
      //Code de redirection vers la page « index.jsp » après enregistrement

        request.getRequestDispatcher("/compte.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
