<%-- 
    Document   : curso
    Created on : 18 de mai. de 2022, 18:10:54
    Author     : andre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="inserirCarro.jsp" method="POST">

            <label>Marca: </label> 
            <input type="text" name="marca"><br> 
            <label>Modelo: </label> 
            <input type="text" name="modelo"><br> 
            <label>Numero de Pessoas: </label> 
            <input type="number" name="numero_pessoas"><br> 

            <button type="submit">CADASTRAR</button> <br> 
        </form>
        <a href="listarCarro.jsp">Listar Carros</a>
    </body>
</html>
