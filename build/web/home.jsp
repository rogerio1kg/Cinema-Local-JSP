<%@page language="java" contentType="text/html charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
        <link rel="icon" href="favicon.ico" type="image/x-icon">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Anton&family=Roboto:wght@100;300&display=swap" rel="stylesheet">
        <title>LOGIN</title>
        <style>
            * {
                font-family: 'Roboto', serif;
                padding: 0px;
                margin: 0px;
            } 
            body {
                background-color: white;
            }
            header {
                background-color: white;
                color: black;
                display: flex;
                align-items: center;
                justify-content: center;
                height: 15vh; 
            }
            main {
                display: flex;
                align-items: center;
                justify-content: center;
                height: 75vh;
                width: 100%;
            }
            .form_class {
                width: 500px;
                padding: 40px;
                border-radius: 8px;
                background-color: whitesmoke;
                box-shadow: 5px 5px 10px rgb(0,0,0,0.3);
            }
            .form_div {
                text-transform: uppercase;
            }
            .form_div > label {
                letter-spacing: 3px;
                font-size: 1rem;
            }
            .info_div {
                text-align: center;
                margin-top: 20px;
            }
            .info_div {
                letter-spacing: 1px;
            }
            .info_div > a{
                color: firebrick;
                font-weight: bold;
            }
            label{
                font-weight: bold;
            }
            .field_class {
                width: 100%;
                border-radius: 6px;
                border-style: solid;
                border-width: 1px;
                padding: 5px 0px;
                text-indent: 6px;
                margin-top: 10px;
                margin-bottom: 20px;
                font-size: 0.9rem;
                letter-spacing: 2px;
            }
            .button {
                border-style: none;
                border-radius: 5px;
                color: whitesmoke;
                background-color: #F44336;
                padding: 8px 20px;
                text-transform: uppercase;
                letter-spacing: .8px;
                display: block;
                margin: auto;
                margin-top: 10px;
                box-shadow: 2px 2px 5px rgb(0,0,0,0.2);
                cursor: pointer;
                font-weight: bold;
            }
            footer {
                height: 10vh;
                background-color: whitesmoke;
                color: black;
                display: flex;
                font-size: 12px;
                align-items: center;
                justify-content: center;
                box-shadow: -2px -2px 5px rgb(0,0,0,0.3);
            }
            footer > p {
                text-align: center;
                letter-spacing: 3px;
            }
        </style>
    </head>
    <body>
        <header>
            <img src="https://iili.io/JqDQ51R.png" alt="logo"/>
        </header>      
        <main>
            <form id="login_form" class="form_class" action="<%=request.getContextPath()%>/home" method="post">
                <div class="form_div">
                    <label>Usuário:</label>
                    <input id="nick" class="field_class" name="username" type="text" placeholder="Insira o seu usuário" autofocus>
                    <label>Senha:</label>
                    <input id="password2" class="field_class" name="password" type="password" placeholder="Insira a sua senha">
                    <button class="button" type="submit" name="submit" form="login_form">Acessar</button>
                </div>
                <div class="info_div">
                    <p>Ainda não é um usuário registrado? <a href="register.jsp">Cadastre-se!</a></p>
                </div>
            </form>
        </main>
        <footer>
            <p>COPYRIGHT© CINEMAS UNISERVLET 2023</p>
        </footer>
    </body>
</html>
