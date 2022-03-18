<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import = "java.util.ArrayList"
    %>
<%
    ArrayList<String> listaSedi = null;
                			
    if(request.getSession().getAttribute("Sedi") != null){
		listaSedi = (ArrayList<String>)request.getSession().getAttribute("Sedi");
	}                			
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inserisci dipendente</title>
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

<div class="container">
        <div id="formDiv">
            <form action="/TukTukTaxi/Register_servlet" method="post">
                <div class="form-block">
                    <div id="title">
                        <h2>Registra dipendente</h2>
                    </div>
                </div>
                <div class="form-block">
                	<select name="sede">
                		<%
                		if(listaSedi != null){
	                		for(String sede : listaSedi){
	                			%>
	                			<option value=<%="'"+sede+"'" %> ><%=sede %></option>
	                			<%
	                		}
                		}
                		%>
                	</select>
                </div>
                <div class="form-block">
                    <input class="form-input" name="nome" placeholder="Nome" type="text" required>
                </div>
                <div class="form-block">
                    <input class="form-input" name="cognome" placeholder="Cognome" type="text" required>
                </div>
                <div class="form-block">
                    <input class="form-input" name="cellulare" placeholder="Telefono" type="tel" required>
                </div>
                <div class="form-block">
                    <input class="form-input" name="email" placeholder="E-Mail" type="email" required>
                </div>
                <div class="form-block">
                	<div id="subDiv">
                		<div class="orizDiv">
                			<input class="form-input" name="username" placeholder="Username" type="text" required>	
                		</div>
                		<div class="orizDiv">
                			<input class="form-input" name="password" placeholder="Password" type="password" required>
                		</div>
                    </div>
                </div>
                <div class="form-block">
                    <button class="btn" type="submit">Registra dipendente</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>