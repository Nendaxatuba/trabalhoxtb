<%@page import="java.util.ArrayList"%>
<%@page import="br.com.model.Cliente"%>
<%@page import="br.com.DAO.ClienteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Cliente</title>
    </head>
    <body>
        <form action="inserirCliente.jsp" method="POST">

            <label>Nome: </label>  
            <input type="text" name="nome"><br> 
            <label>Idade: </label> 
            <input type="number" name="idade"><br>
            <label>Email: </label>  
            <input type="text" name="email"><br>
            

            <button type="submit">CADASTRAR</button> <br>             
        </form>
        <a href="listarCliente.jsp">Listar Clientes</a>
    </body>
</html>
