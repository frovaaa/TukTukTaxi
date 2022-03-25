<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>Home</title>
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
          <a class="nav-link"href="listaDipendenti_servlet">Lista dipendenti</a>
        </li>
      </ul>
    </div>
  	
  	<%
  		boolean logged = false;
  		if(request.getSession().getAttribute("log") != null){
  			logged = (boolean) request.getSession().getAttribute("log");
  		}
  		
  		if(!logged){ //Verifico che l'utente sia settato
  			%>
  				<div><a class='btn' href='login.jsp'>Login</a></div>
  			<%
  		}else{
  			%>
				<div class=''>
			  		<a class='btn btn-secondary'>
			  			<svg xmlns='http://www.w3.org/2000/svg' width='20' height='20' fill='currentColor' class='bi bi-person-circle' viewBox='0 0 16 16'>
						  <path d='M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z'/>
						  <path fill-rule='evenodd' d='M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z'/>
						</svg>
			  		</a>
			  	</div>
			<%
  		}
  	%>
  </div>
</nav>
</body>
</html>