package Servlet;


import java.io.IOException;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import ConnessioneDB.ConnessioneDB;

/**
 * Servlet implementation class ConnessioneDB_servlet
 */
@WebServlet("/ConnessioneDB_servlet")
public class ConnessioneDB_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConnessioneDB_servlet() {
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
	@SuppressWarnings("static-access")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		ConnessioneDB saveUtenti = new ConnessioneDB();
		
		try {
			boolean Esiste = saveUtenti.GetUtenti(username, password);
			if(Esiste) { 
				System.out.println("Utente trovato"); 
				response.sendRedirect("Risposte/BuonFine.jsp");
			} else {
				System.out.println("Utente NON trovato");
				response.sendRedirect("login.jsp");
			}
		}
		catch (SQLException e){
			e.printStackTrace();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
}
