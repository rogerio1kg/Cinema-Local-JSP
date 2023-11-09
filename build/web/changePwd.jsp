<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.services.registration.dao.*"%>
<%@page import="com.services.login.database.*"%>
<%@page import="com.services.logout.logoutServlet"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Alterar Senha</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="icon" href="favicon.ico" type="image/x-icon">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Anton&family=Roboto:wght@100;300&display=swap" rel="stylesheet">
        <style>
            * {
                font-family: 'Roboto', serif;
                padding: 0px;
                margin: 0px;
            } 
            body{
                height: 125vh;
                margin-top: 50px;
                padding: 100px;
            }
            header{
                background-color: white;
                position: fixed;
                top: 0;
                left: 0;
                right: 0;
                height: 80px;
                display: flex;
                align-items: center;
                box-shadow: 0 0 7px 0 #666;
            }
            header img{
                height: 30px;
                margin-left: 40px;
            }
            header *{
                display: inline;
            }
            header li{
                margin: 20px;
            }
            header li a{
                color: black;
                text-decoration: none;
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
        </style>
    </head>
    <body>
        <header>
            <img class="logo" src="https://iili.io/JBqUFBS.png" alt="logo_dmx">
            <nav>
                <li><a href="home" style="font-weight:bold;">Página Inicial</a></li>
                <li><a href="account.jsp" style="font-weight:bold">Conta</a></li>
                <li><a href="viewMovies" style="font-weight:bold">Filmes</a></li>
                <li><a href="viewRatings"style="font-weight:bold">Avaliações</a></li>
                <li><a href="viewInfo" style="font-weight:bold">Informações</a></li>
                <li><a href="logout" style="font-weight:bold; color:firebrick">Sair</a></li>
            </nav>
        </header>
        <main>
            <form id="login_form" class="form_class" action="<%=request.getContextPath() %>/updatePassword" method="GET">
                <div class="form_div">
                    <label>Senha Antiga:</label>
                    <input class="field_class" name="oldpassword" type="password" placeholder="Informe a senha antiga" required>
                    <label>Nova Senha:</label>
                    <input class="field_class" name="newpassword" type="password" placeholder="Informe a nova senha" required>
                    <button class="button" type="submit" form="login_form" value="Submit">Atualizar</button>
                    </div>
                    <div class="info_div">
                        <a href="home.jsp">Voltar</a>
                    </div>
                </form>
        </main>
    </body>
</html>