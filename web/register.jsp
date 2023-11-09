<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
        <link rel="icon" href="favicon.ico" type="image/x-icon">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Anton&family=Roboto:wght@100;300&display=swap" rel="stylesheet">
        <title>Cadastrar | UNISERVLET</title>
        <style>
            *{
                font-family: 'Roboto', sans-serif;
                margin: 0px;
                padding: 0px;
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
            h4{
                font-size: 25px;
                font-weight: bold;
                text-transform: uppercase;
                justify-content: center;
                align-items: end;
                text-align: center;
                
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
        <h4>Cadastar um novo usuário</h4>
        <main>
            
            <form id="login_form" class="form_class" action="<%=request.getContextPath() %>/register" onsubmit="welcome()" method="post">
                <div class="form_div">
                    <label>Nome:</label>
                    <input class="field_class" name="firstName" type="text" placeholder="Insira o seu nome" required>
                    <label>Sobrenome:</label>
                    <input class="field_class" name="lastName" type="text" placeholder="Insira a seu sobrenome" required>
                    <label>Email</label>
                    <input class="field_class" type="text" name="email" spellcheck="false" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" placeholder="cinemasservlet@cine.com.br"/>
                    <label>Usuário</label>
                    <input class="field_class" type="text"  name="username" placeholder="Insira seu usuário" required/>
                    <label>Senha:</label>
                    <input class="field_class" type="password"  name="password" pattern=".{4,}" title="Oito ou mais caracteres" placeholer="Senha deverá conter no mínimo 8 caracteres" required/>
                    
                    <button class="button" type="submit" form="login_form">Cadastrar</button>
                </div>
                <div class="info_div">
                    <a href="home.jsp">Voltar</a>
                </div>
            </form>
        </main>
        <footer>
            <p>COPYRIGHT© CINEMAS UNISERVLET 2023</p>
        </footer>
    </body>
</html>
