<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport"
		content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<!-- CSS only BOOTSTRAP-->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
		
	<!--BOOTSTRAP ICONS -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
	<title>Login</title>
</head>
<body>
<body style="background-color: rgb(240, 239, 244);">
<div>
    <div class="container">
    	<a href="Register_servlet">Registra utente</a>
        <div id="formDiv">
            <form action="/TukTukTaxi/ConnessioneDB_servlet" method="post">
                <div class="form-block">
                    <div id="title">
                        <h2>Login</h2>
                    </div>
                </div>
                <div class="form-block">
                    <input class="form-input" name="username" placeholder="Username" type="text" required>
                </div>
                <div class="form-block">
                    <input class="form-input" name="password" placeholder="Password" type="password" required>
                </div>
                <div class="form-block">
                    <div id="subDiv">
                        <input type="checkbox" name="rememberMe" id="rememberMe">
                        <label for="rememberMe">Remember me?</label>
                    </div>
                </div>
                <div class="form-block">
                    <button class="btn" type="submit">Login</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</body>
</html>