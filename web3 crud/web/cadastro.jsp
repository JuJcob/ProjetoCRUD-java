<%-- 
    Document   : cadastrar
    Created on : 4 de mai. de 2023, 19:55:09
    Author     : QI
--%>
<%@include file="session/verify.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
  body {
    background-color: #f2f2f2;
    font-family: Arial, sans-serif;
  }
  
  h1 {
    text-align: center;
    color: #333;
  }
  
  form {
    max-width: 400px;
    margin: 0 auto;
    padding: 20px;
    background-color: #fff;
    border-radius: 4px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  }
  
  h2 {
    text-align: center;
    color: #333;
  }
  
  input[type="text"],
  input[type="number"],
  select {
    width: 100%;
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
  }
  
  input[type="submit"] {
    width: 100%;
    padding: 10px;
    background-color: #4CAF50;
    color: #fff;
    border: none;
    border-radius: 4px;
    cursor: pointer;
  }
  
  a {
    display: block;
    text-align: center;
    margin-top: 20px;
    color: #4CAF50;
    text-decoration: none;
  }
  
  a:hover {
    text-decoration: underline;
  }
</style>

        <meta charset="UTF-8">
        <title>Cadastrar</title>
    </head>
    <body>
        <h1>Cadastro</h1>
        <hr>
        <form action="ExameController" method="post">
            <h2>Novo Exame</h2>
            <input type="text" name="exame" placeholder="Digite o nome do exame" required>
            <br><br>
            <input type="number" name="valor" placeholder="Digite o valor do exame" min="0" step="0.01" required >
            <br><br>
            <select name="especialidade" required>
                <option value="">Selecione a especialidade</option>
                <option value="Gastro">Gastro</option>
                <option value="Dentista">Dentista</option>
                <option value="Neuro">Neuro</option>
                <option value="Pediatra">Pediatra</option>
            </select>
            <br><br>
            <input type="submit" value="Cadastrar">
        </form>
        <hr>
        <a href="home.jsp">Página inicial</a>
    </body>
</html>
