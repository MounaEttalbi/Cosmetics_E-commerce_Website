package servlet;

import pojo.Product;
import pojo.Panier;


import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/AddPanierServlet")
public class AddPanierServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String imageUrl = request.getParameter("imageUrl");
        double price = Double.parseDouble(request.getParameter("price"));
        String description = request.getParameter("description");
        String marque = request.getParameter("marque");

        Product product = new Product(id, name, imageUrl, price, description, marque);

        HttpSession session = request.getSession();
        Panier panier = (Panier) session.getAttribute("panier");

        if (panier == null) {
            panier = new Panier();
            session.setAttribute("panier", panier);
        }

        panier.addProduct(product);
        response.sendRedirect("shop.jsp");
    }
}
