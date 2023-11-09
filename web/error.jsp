<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <title>Error</title>
    <style>
        *{
            margin: 0 auto;
            text-align: center;
        }
        .center_button{
            display: flex;
            position: relative;
            width: 300px;
        }
        .imagecentral img{
            background-repeat: no-repeat;
            position: relative;
            width: 250px;
            height: 250px;
            top: 100px;
            left: 120px;
        }
        img{
            width: 35%;
            align-items: normal;
        }
    </style>
</head>
<body>
    <h1>Ops... Houve algum erro inesperado no servidor.</h1>
    <div class="imagemcentral">
        <img src="https://iili.io/JBaI3zP.jpg" alt="isErrorPage">
    </div>
    <div class="center_button">
        <a class="btn btn-primary btn-lg btn-block" href="home.jsp" role="button" style="background-color: brown;">Redirecionar a página principal</a>
    </div>
</body>
</html>
 