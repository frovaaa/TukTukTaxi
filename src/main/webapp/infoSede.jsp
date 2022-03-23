<%@page import="ConnessioneDB.ConnessioneDB" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"

         import="java.util.ArrayList"
         import="java.beans.*"
         import="java.ConnessioneDB.*"
%>

<%
    beans.SedeBean sede = null;
    if (request.getSession().getAttribute("sede") != null) {
        sede = (beans.SedeBean) request.getSession().getAttribute("sede");
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Informazioni sede</title>
</head>
<body>
<div class="container">
    <h4>Informazioni sede</h4>
    <div class="container">
        <div class="row">
            <label for="IDSede">IDSede</label><input name="IDSede" id="IDSede" type="number" class="form-control mb-3"
                                                     value="<%= sede.getIDSede() %>">
            <label for="Nome">Nome</label><input name="Nome" id="Nome" type="text" class="form-control mb-3"
                                                 value="<%= sede.getNome() %>">
            <label for="Paese">Paese</label><input name="Paese" id="Paese" type="text" class="form-control mb-3"
                                                   value="<%= sede.getPaese() %>">
            <label for="Citta">Città</label><input name="Citta" id="Citta" type="text" class="form-control mb-3"
                                                   value="<%= sede.getCitta() %>">
            <label for="CAP">Cap</label><input name="CAP" id="CAP" type="text" class="form-control mb-3"
                                               value="<%= sede.getCAP() %>">
            <label for="Via">Via</label><input name="Via" id="Via" type="text" class="form-control mb-3"
                                               value="<%= sede.getVia() %>">
            <label for="NCivico">Numero Civico</label><input name="NCivico" id="NCivico" type="number"
                                                             class="form-control mb-3" value="<%= sede.getNCivico() %>"
                                                             min="0">
        </div>
    </div>
</div>
</body>
</html>