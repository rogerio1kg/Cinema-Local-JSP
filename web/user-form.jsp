<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.services.movie.*"%>
<%@page import="com.services.movieDao"%>
<%@page import="com.services.movieweb"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    <link rel="icon" href="favicon.ico" type="image/x-icon">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Anton&family=Roboto:wght@100;300&display=swap" rel="stylesheet">
    <title>Informações</title>
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
        <div class="container col-md-5">
            <div class="card">
                <div class="card-body">
                    <c:if test="${movie != null}">
                        <form action="update" method="post">
                    </c:if>
                    <c:if test="${movie == null}">
                        <form action="insert" method="post">
                    </c:if>
                    <caption>
                        <h2>
                            <c:if test="${movie != null}">
                                Editar Filme
                            </c:if>
                            <c:if test="${movie == null}">
                                Adicionar Filme
                            </c:if>
                        </h2>
                    </caption>
                    <c:if test="${movie != null}">
                        <input type="hidden" name="id" value="<c:out value='${movie.id}' />" />
                    </c:if>
                    <fieldset class="form-group">
                        <label>Título do Filme</label> 
                        <input type="text" value="<c:out value='${movie.movieTitle}' />" class="form-control" name="movieTitle" required="required">
                    </fieldset>
                    <fieldset class="form-group">
                        <label> Descrição</label>
                        <input type="text" value="<c:out value='${movie.movieDescr}' />" class="form-control" name="movieDescr">
                    </fieldset>
                    <fieldset class="form-group">
                        <label>Sessões </label> <input type="text" value="<c:out value='${movie.movieViews}' />" class="form-control" name="movieViews">
                    </fieldset>                    
                    <fieldset class="form-group">
                        <label>Gênero</label> <input type="text" value="<c:out value='${movie.movieGenre}' />" class="form-control" name="movieGenre">
                    </fieldset>
                    <button type="submit" class="btn btn-success"  style="background-color: brown; font-weight: bold; color: white; border: brown;">Adicionar</button>
                </form>
                </div>
            </div>
        </div>
    </main>    
</body>
</html>
