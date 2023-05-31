<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Logar</title>
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
    width: 400px;
    height: 400px;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
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
  input[type="password"] {
    width: 95%;
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
  
  input[type="submit"]:hover {
  background-color: #45a049;
}

input[type="submit"]:active {
  background-color: #3c903b;
  transform: translateY(1px);
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

    </head>
    <body>
        <form action="LoginController" method="post">
            <h1> LOGIN </h1>
            <input type="text" name="user" id="user" class="fields" placeholder="Nome de usuário" required>
            <br><br>

            <input type="password" name="pass" id="pass" class="fields" placeholder="Senha" required>
            <br><br>

            <input type="submit" value="Enviar">
        </form>
    </body>
</html>
