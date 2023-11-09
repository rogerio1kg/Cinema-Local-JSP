<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.services.registration.dao.*"%>
<%@page import="com.services.login.database.*"%>
<%@page import="com.services.logout.logoutServlet"%>


<!DOCTYPE html>
<html>
    <head>
        <title>TELA INICIAL</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
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
        .button {
            border-style: none;
            border-radius: 5px;
            color: whitesmoke;
            background-color: #F44336;
            padding: 8px 5px;
            text-transform: uppercase;
            letter-spacing: .8px;
            display: block;
            margin: auto;
            margin-top: 10px;
            box-shadow: 2px 2px 5px rgb(0,0,0,0.2);
            cursor: pointer;
            font-weight: bold;
        }
        .button li{
            margin: 20px;
        }
        .button *{
            display: inline;
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
        main *{
            text-transform: uppercase;
            align-items: center;
        }
        main h4{
            text-transform: uppercase;
            text-align: center;
            font-size:  30px;
        }
        main ul{
            margin:initial;
            width: 15%;
            text-align: center;
            align-items: center;
            display: inline-table;
            margin-left: 200px;
            justify-content: space-between;
            padding: 30px;
        }
    </style>
    </head>
<body>
    <header>
        <img class="logo" src="https://iili.io/JBqUFBS.png" alt="logo_dmx" border="0">
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
        <h4>Alteração de informações da conta</h4>
        <ul><a href="changename.jsp" class="button"> Alterar usuário</a></ul>
        <ul><a href="changePwd.jsp" class="button">Trocar Senha </a></ul>
        <ul><a href="deleteUser" class="button">Apagar Conta</a></ul>
    </main>
    </body>
</body>
</html>