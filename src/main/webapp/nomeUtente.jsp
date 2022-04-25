<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
  		boolean logged = false;
  		if(request.getSession().getAttribute("log") != null){
  			logged = (boolean) request.getSession().getAttribute("log");
  		}else{
  			if(request.getCookies() != null){
  				try{
  	  				for (Cookie ck : request.getCookies()){
  	  					//System.out.println("Nome ck: " + ck.getName());
  	  	  				if(ck.getName().equals("logged") && !ck.getValue().equals("")){
  	  	  					logged = true;
  	  	  					request.getSession().setAttribute("id", ck.getValue());
  	  	  				}
  	  	  			}
  	  			}catch(Exception ex){
  	  				System.out.println(ex.getMessage());
  	  			}	
			}
  		}
  		
  		
  		if(!logged){ //Verifico che l'utente sia settato
  			%>
  				<li class="nav-item d-flex align-items-center">
                        <a href="login.jsp" class="nav-link text-body font-weight-bold px-0">
                            <i class="fa fa-user me-sm-1"></i>
                            <span class="d-sm-inline d-none">Sign In</span>
                        </a>
                </li>
  			<%
  		}else{
  			%>
				<li class="nav-item d-flex align-items-center">
                        <a href="#" class="nav-link text-body font-weight-bold px-0">
                            <i class="fa fa-user me-sm-1"></i>
                            <span class="d-sm-inline d-none">Ciao</span>
                        </a>
                    </li>
			<%
  		}
  	%>