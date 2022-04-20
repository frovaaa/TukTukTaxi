<%@ page import="ConnessioneDB.ConnessioneDB"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
   
   import = "java.util.ArrayList"
   import = "java.beans.*"
   import = "java.ConnessioneDB.*"
    %>
    
    <%
    ArrayList<beans.DipendenteBean> listaDipendenti = null;
    
    if(request.getSession().getAttribute("dipendenti") != null){
    	System.out.println("hdjkshkagdhsajkdgsajkdkjgadjjksagdkdgjasd");
		listaDipendenti = (ArrayList<beans.DipendenteBean>) request.getSession().getAttribute("dipendenti");
	}
     
    if(listaDipendenti == null) {
		response.sendRedirect("home.jsp");
		return;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<title>Lista dipendenti</title>
</head>
<body>
<%@ include file="navBar.jsp" %>

<div class="container" style="margin-top: 5%">
	<table class="table table-striped">
		<thead>
		    <tr>
		      <th scope="col">#</th>
		      <th scope="col">Nome</th>
		      <th scope="col">Cognome</th>
		      <th scope="col">Email</th>
		      <th scope="col">Cellulare</th>
		      <th scope="col">Sede</th>
		      <th scope="col">Azioni</th>
		    </tr>
		  </thead>
		  <tbody>
		  	<%
		  		int i = 1;
		  	
		  		for(beans.DipendenteBean t : listaDipendenti){
		  			%>
		  				
		  			<tr>
				      <th scope="row"><%= i %></th>
				      <td><%= t.getNome() %></td>
				      <td><%= t.getCognome() %></td>
				      <td><%= t.getEmail() %></td>
				      <td><%= t.getCellulare() %></td>
				      <td><a href=<%="'/TukTukTaxi/infoSede_servlet?id="+t.getIDFSede()+"'"%>><%= ConnessioneDB.GetNomeSede(t.getIDFSede()) %></a></td>
				    </tr>
		  			
		  			<%
		  			i++;
		  		}
		  	%>
		  </tbody>
	</table>
</div>

</body>
</html>