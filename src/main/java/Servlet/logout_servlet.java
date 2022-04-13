package Servlet;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import java.io.IOException;

import ConnessioneDB.ConnessioneDB;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/logout_servlet")
public class logout_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public logout_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("finally")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			if(request.getSession().getAttribute("log") != null) {
				boolean loggato = (boolean) request.getSession().getAttribute("log");
				
				if(loggato) {
					request.getSession().removeAttribute("log");
					Cookie ck = new Cookie("logged", "");
					ck.setMaxAge(0);
					
					response.addCookie(ck);
					response.sendRedirect("home.jsp");
				}else {
					response.sendRedirect("login.jsp");
				}
			}else {
				response.sendRedirect("login.jsp");
			}
		}catch(Exception ex) {
			System.out.println(ex.getMessage());
		}finally {
			return;
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
