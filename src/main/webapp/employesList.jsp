<%@page import="ConnessioneDB.ConnessioneDB"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
   
   import = "java.util.ArrayList"
   import = "java.beans.*"
   import = "java.ConnessioneDB.*"
    %>
    
    <%
    ArrayList<beans.DipendenteBean> listaDipendenti = null;
                			
    if(request.getSession().getAttribute("dipendenti") != null){
		listaDipendenti = (ArrayList<beans.DipendenteBean>) request.getSession().getAttribute("dipendenti");
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
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">TukTukTaxi</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="home.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="login.jsp">Login</a>
        </li>
        <li class="nav-item">
          <a class="nav-link"href="listaDipendenti_servlet">Lista dipendenti</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

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
				      <td><a href=<%="'infoSede_servlet?id="+t.getIDFSede()+"'"%>><%= ConnessioneDB.GetNomeSede(t.getIDFSede()) %></a></td>
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