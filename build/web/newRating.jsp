<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nova Avaliação</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
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
        main{
            margin: 10%;
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
                    <c:if test="${rate == null}">
                        <form action="newRating" method="get">
                    </c:if>
                    <caption>
                        <h2>
                            <c:if test="${rate != null}">
                                Editar Usuário
                            </c:if>
                            <c:if test="${rate == null}">
                                Adicionar nova Avaliação
                            </c:if>
                        </h2>
                    </caption>
                    <c:if test="${rate != null}">
                        <input type="hidden" name="id" value="<c:out value='${rating.id}' />" />
                    </c:if>
                    <fieldset class="form-group">
                        <label>Comentar</label> 
                        <input type="text" value="<c:out value='${rating.comments}' />" class="form-control" name="comments">
                    </fieldset>
                    <button type="submit" class="btn btn-success" style="background-color: brown; font-weight: bold; color: white; border: brown;">Salvar</button>
                </div>
            </div>
        </div>
    </main>
</body>
</html>