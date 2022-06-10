<%@page import="java.util.ArrayList"%>
<%@page import="br.com.model.Cliente"%>
<%@page import="br.com.DAO.ClienteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Clientes</title>
    </head>
    <body>
        <%
            try {
                ClienteDAO objClienteDAO = new ClienteDAO();
                ArrayList<Cliente> lista = objClienteDAO.pesquisarCliente();
                                
                for (int num = 0; num < lista.size(); num++) {
                    out.print("Nome: " + lista.get(num).getNome() + "<br>");
                    out.print("Idade: " + lista.get(num).getIdade() + "<br>");
                    out.print("Email: " + lista.get(num).getEmail() + "<br>");
                    }

            } catch (Exception e) {
            }
        %>
    </body>
</html>
