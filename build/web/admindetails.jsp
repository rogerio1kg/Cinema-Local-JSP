<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.services.registration.dao.*"%>
<%@page import="com.services.login.database.*"%>


<!DOCTYPE html>
<html>
    <head>
      <title>TELA INICIAL ADMINISTRADOR</title>
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
            margin-top: 100px;
            padding: 120px;
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
            font-size: 25px;
            text-align: match-parent;
            justify-content: center;
            text-transform: uppercase;
            width: 100%;
        }
        main p{
            color: firebrick;
            font-weight: bold;
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
          <p>
              <%String username = request.getParameter("username");%>
              <%out.println("Bem-vindo: "+username);%>
          </p>
          <c:forEach var="info" items="${listInfo}">
              <c:out value="${info.title}" />
          </c:forEach>
      </main>
  </body>
    
</html>