<%-- 
    Document   : edit-exame
    Created on : 16 de mai. de 2023, 21:38:35
    Author     : QI
--%>

<%@page import="model.Exame" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Exame e = (Exame)request.getAttribute("exame");
%>

<!DOCTYPE html>
<html>
    <head>
 <style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f5f5f5;
        margin: 0;
        padding: 0;
    }
    
    h1 {
       color: #333;
        padding: 20px;
        border-radius: 5px;
        margin: 0 auto;
        text-align: center;
        margin-bottom: 20px;
    }
    
    form {
        background-color: #fff;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        max-width: 400px;
        margin: 0 auto;
    }
    
    input[type="text"],
    input[type="number"],
    select {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 3px;
        font-size: 16px;
        margin-bottom: 10px;
        box-sizing: border-box;
    }
    
    input[type="submit"] {
        background-color: #4CAF50;
        color: #fff;
        padding: 10px 20px;
        border: none;
        border-radius: 3px;
        font-size: 16px;
        cursor: pointer;
    }
    
    a {
        color: #4CAF50;
        text-decoration: none;
        margin-right: 10px;
    }
    
    hr {
        margin-top: 30px;
        margin-bottom: 30px;
        border: 0;
        border-top: 1px solid #eee;
    }
</style>


        <meta charset="UTF-8">
        <title>Editar Exame</title>
    </head>
    <body>
        <h1>Edição</h1>
        <hr>
        <form action="ExameController" method="post">
            <input type="text" name="cod" value="<%= e.getCodExame() %>" readonly>
            <br><br>
            
            <input type="text" name="exame" value="<%= e.getTipo()%>" placeholder="Digite o nome do exame" required>
            <br><br>
            
            <input type="number" name="valor" value="<%= e.getValor()%>" placeholder="Digite o valor do exame" min="0" step="0.01" required >
            <br><br>
            <select name="especialidade" required>
                <option value="<%= e.getEspecialidade()%>"><%= e.getEspecialidade()%></option>
                <option value="Gastro">Gastro</option>
                <option value="Dentista">Dentista</option>
                <option value="Neuro">Neuro</option>
                <option value="Pediatra">Pediatra</option>
            </select>
            <br><br>
            <input type="submit" value="Atualizar">
        </form>
        <hr>
        <a href="home.jsp">Página inicial</a>
    </body>
</html>
