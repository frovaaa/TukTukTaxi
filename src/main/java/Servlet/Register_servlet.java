package Servlet;

import jakarta.servlet.http.HttpServlet;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.beans.*;
import ConnessioneDB.ConnessioneDB;

@WebServlet("/Register_servlet")
public class Register_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			if(ConnessioneDB.SetUtenti(request.getParameter("sede"), request.getParameter("nome"), request.getParameter("cognome"), request.getParameter("cellulare"), request.getParameter("email"), request.getParameter("username"), request.getParameter("password"))) {
				response.sendRedirect("");
			} else {
				response.sendRedirect("signup.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
