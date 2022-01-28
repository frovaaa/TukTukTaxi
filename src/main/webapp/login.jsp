<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
*{
    padding: 0;
    margin: 0;
}
@media only screen and (min-width: 1080px) {
    #formDiv{
        width: 50%!important;
    }
}

.container{
    width: 100%;
    background-color: transparent;
}
#formDiv{
    width: 70%; height: auto;
    margin-left: 50%; margin-top: 15%;
    transform: translate(-50%);
}


.form-block{
    height: 45px;
    padding-top: 10px;
}
.form-input{
    width: 80%; height: auto;
    margin-left: 50%; transform: translate(-50%);

    font-size: medium;

    background-color: transparent;
    padding: 10px;
    border-width: 0 0 2px;
    border-color: rgba(0, 0, 0, 0.4);
}
.form-input::placeholder{
    color: rgba(0, 0, 0, 0.25);
    font-weight: bold;
}
.form-input:focus{
    outline: none; border: none;
    background-color: rgba(0, 0, 0, 0.05);
    transition-duration: 0.3s;
    border-radius: 5px;
}

#subDiv{
    width: 80%; height: auto;
    margin-left: 50%; transform: translate(-50%);

    font-size: medium; font-weight: bold;
    color: rgba(0, 0, 0, 0.6);
}

.btn{
    width: 100%;
    outline: none; border: none; border-radius: 5px;
    color: white; background-color: #3a3e3b;
    cursor: pointer;

    font-size: medium; font-weight: bold;
    padding: 10px;

    width: 80%; height: auto;
    margin-left: 50%; transform: translate(-50%);
}
.btn:hover{
    background-color: #1f211f;
    transition-duration: 0.3s;
}

#title{
    font-weight: bold;
    color: rgba(0, 0, 0, 0.6);

    text-align: center;

    width: 80%; height: auto;
    margin-left: 50%; transform: translate(-50%);
}
</style>
<title>Login</title>
</head>
<body>
<body style="background-color: rgb(240, 239, 244);">
<div>
    <div class="container">
        <div id="formDiv">
            <form action="" method="post">
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