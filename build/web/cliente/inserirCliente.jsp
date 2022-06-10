<%@page import="br.com.DAO.ClienteDAO"%>
<%@page import="br.com.model.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Cliente</title>
    </head>
    <body>
        <%
            try {
                Cliente objCliente = new Cliente();
                objCliente.setNome(request.getParameter("nome"));
                objCliente.setIdade(Integer.parseInt(request.getParameter("idade")));
                objCliente.setEmail(request.getParameter("email"));
                
                ClienteDAO objClienteDAO = new ClienteDAO();
                objClienteDAO.cadastrarCliente(objCliente);
                out.print("Cliente Inserido!!");
            } catch (Exception e) {
            }

        %>
    </body>
</html>
