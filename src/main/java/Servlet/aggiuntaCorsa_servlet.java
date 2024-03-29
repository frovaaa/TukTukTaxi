package Servlet;

import jakarta.servlet.http.HttpServlet;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.beans.*;
import ConnessioneDB.ConnessioneDB;

/**
 * Servlet implementation class aggiuntaCorsa_servlet
 */
@WebServlet("/aggiuntaCorsa_servlet")
public class aggiuntaCorsa_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public aggiuntaCorsa_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int IDDipendente = (int) request.getSession().getAttribute('id');
		try{
		    if(IDDipendente != null) {
		        if(ConnessioneDB.SetCorsa(request.getParameter('DataInizio'), request.getParameter('DataFine'), request.getParameter('Chilometri'), request.getParameter('TariffaCorsa'), IDDipendente)){
		            response.sendRedirect("dashboardEmployee.jsp");
		        } else {
		            response.sendRedirect("dashboardEmployee.jsp");
		        }
		    }

		} catch(Exeption e){
		    e.printStackTrace();
		}
	}

}
