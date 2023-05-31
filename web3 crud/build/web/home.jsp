<%-- 
    Document   : home
    Created on : 27 de abr. de 2023, 19:30:33
    Author     : QI
--%>
<%@include file="session/verify.jsp" %>
<%@page import="model.User"%>
<%
    User userSession =  (User) session.getAttribute("userNewSession");
%>
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
  
  p {
    text-align: center;
    margin-top: 20px;
    font-size: 20px;
  }
  
  button {
    display: block;
    margin: 0 auto;
    padding: 10px 20px;
    font-size: 16px;
    background-color: #4CAF50;
    color: #fff;
    border: none;
    border-radius: 4px;
    cursor: pointer;
  }
  
  button:hover {
    background-color: #45a049;
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
        <title>Bem vindo paciente</title>
    </head>
    <body>
        <p>
        Bem vindo <%=
                                (userSession != null)
                                        ? userSession.getUserName() 
                                        : "visitante"
                          %>
                          
        <br>             
        <br><button onclick="window.location.href='session/logout.jsp'">Logout</button>
        </p>
        <hr>
        <button onclick="window.location.href='cadastro.jsp'">
            CADASTRAR
        </button>
        <br>
        <button onclick="window.location.href='lista.jsp'">
            LISTAR
        </button>
    </body>
</html>
