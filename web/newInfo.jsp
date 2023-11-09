<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.services.info.dao.*"%>
<%@page import="com.services.login.database.*" %>
<%@page import="com.services.login.bean.*" %>
<%@page import="com.services.login.web.*" %>
<%@page import="com.services.viewMovies.dao.*"%>
<%@page import="com.services.registration.moviedao.*"%>
<%@page import="com.services.registration.moviemodel.*"%>
<%@page import="com.services.registration.controller.*"%>
<%@page import="com.services.registration.dao.*"%>
        
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
                    <c:if test="${info == null}">
                        <form action="newInfo" method="get">
                    </c:if>
                    <caption>
                        <h2>
                            <c:if test="${info != null}">
                                Editar Informações
                            </c:if>
                            <c:if test="info == null">
                                Adicionar Nova Informação
                            </c:if>
                        </h2>
                    </caption>
                    <c:if test="${info != null}">
                        <input type="hidden" name="id" id="info_id" value="<c:out value='${info.id}'/>"/>
                    </c:if>
                    <fieldset class="form-group">
                        <label>Informação do Título</label> 
                        <input type="text" value="<c:out value='${info.title}' />" class="form-control" name="title" required="required">
                    </fieldset>
                    <fieldset class="form-group">
                        <label>Descrição</label>
                        <input type="text" value="<c:out value='${info.descr}' />" class="form-control" name="descr">
                    </fieldset>
                    <button type="submit" class="btn btn-sucess" style="background-color: brown; font-weight: bold; color: white;">Salvar</button>
                </form>
                </div>
            </div>
        </div>
    </main>
</body>
</html>    
    
