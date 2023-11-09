<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.services.registration.dao.*"%>
<%@page import="com.services.login.database.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
    <head>
        <title>CADASTROS DE FILME</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
        <link rel="icon" href="favicon.ico" type="image/x-icon">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Anton&family=Roboto:wght@100;300&display=swap" rel="stylesheet">
    </head>
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
        table{
            border: 0.2rem silver solid;
        }
        main tbody{
            box-sizing: border-box;
        }

    </style>
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
            <a href="newInfo" class="btn btn-success" style="background-color: brown; font-weight: bold; border: brown;">Adicionar Filme</a>
            <br><br>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Identificação</th>
                        <th>Título</th>
                        <th>Descrição</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="info" items="${listInfo}">
                        <tr>
                            <td>
                                <c:out value="${info.id}"/>
                            </td>
                            <td>
                                <c:out value="${info.title}"/>
                            </td>
                            <td>
                                <c:out value="${info.descr}"/>
                            </td>
                            <td>
                                <a href="deleteInfo?id=<c:out value='${info.id}'/>">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>

        </main>
    </body>
</html>