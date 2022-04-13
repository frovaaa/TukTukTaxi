package Servlet;


import java.io.IOException;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
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
		String remember = request.getParameter("rememberMe");
		
		System.out.println("\nRemember: " + remember);
		
		ConnessioneDB saveUtenti = new ConnessioneDB();
		
		try {
			boolean Esiste = saveUtenti.GetUtenti(username, password);
			if(Esiste) { 
				//System.out.println("Utente trovato"); 
				if(remember == "true") {
					Cookie ck = new Cookie("logged", "" + ConnessioneDB.GetIDUtente(username));
					ck.setMaxAge(1209600);
					response.addCookie(ck);
				}
				
				response.sendRedirect("home.jsp");
			} else {
				System.out.println("Utente NON trovato");
				
				request.getSession().setAttribute("error", "Login fallito! Riprova!");
				response.sendRedirect("login.jsp");
			}
			
			request.getSession().setAttribute("log", Esiste);
		}
		catch (SQLException e){
			e.printStackTrace();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
}
