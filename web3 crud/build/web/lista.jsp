<%-- 
    Document   : lista
    Created on : 4 de mai. de 2023, 19:56:33
    Author     : QI
--%>

<%@page import="model.ExameDAO"%>
<%@page import="model.Exame"%>
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
  
  table {
    margin: 20px auto;
    border-collapse: collapse;
    width: 80%;
  }
  
  th, td {
    padding: 8px;
    text-align: left;
    border-bottom: 1px solid #ddd;
  }
  
  tr:nth-child(even) {
    background-color: #f2f2f2;
  }
  
  tr:hover {
    background-color: #ddd;
  }
  
  a {
    display: inline-block;
    margin-right: 5px;
    text-decoration: none;
    color: #4CAF50;
  }
  
  a:hover {
    text-decoration: underline;
  }
</style>

        <meta charset="UTF-8">
        <title>Lista de Exames</title>
    </head>
    <body>
        <h1>Lista</h1>
        <table>
            <thead>
                <th>CODIGO</th>
                <th>NOME</th>
                <th>VALOR</th>
                <th>ESPECIALIDADE</th>
                <th></th>
                <th></th>
            </thead>
            <tbody>
            <%
                      ExameDAO e = new ExameDAO();
                      for(Exame item : e.listExame()){
                %>
                <tr>
                    <td><%= item.getCodExame() %></td>
                    <td><%= item.getTipo() %></td>
                    <td><%= item.getValor() %></td>
                    <td><%= item.getEspecialidade() %></td>
                    <td>
                        <a href="UpdateExame?cod=<%= item.getCodExame() %>">🖊</a>
                    </td>
                    <td>
                        <a onclick="confirmaDelete(<%= item.getCodExame() %>)">🗑</a>
                    </td>
                </tr>
            <%
                    }
                %>
            </tbody>
        </table>
        <hr>
        <a href="home.jsp">Página inicial</a>
        
        <script>
                function confirmaDelete(cod){
                    if(confirm("Deseja realmente excluir?")) {
                        window.location.replace("DeleteExame?cod=" + cod);
                    } else {
                        alert("Exclusão cancelada!");
                    }
                }
           </script>
    </body>
</html>
