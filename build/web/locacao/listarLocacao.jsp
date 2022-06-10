<%@page import="java.util.ArrayList"%>
<%@page import="br.com.model.Locacao"%>
<%@page import="br.com.model.Cliente"%>
<%@page import="br.com.DAO.LocacaoDAO"%>
<%@page import="br.com.DAO.ClienteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Locações</title>
    </head>
    <body>
        <%
            try {
                LocacaoDAO objLocacaoDAO = new LocacaoDAO();
                ArrayList<Locacao> lista = objLocacaoDAO.pesquisarLocacao();
                ClienteDAO objClienteDAO = new ClienteDAO();
                                
                for (int num = 0; num < lista.size(); num++) {
                    Cliente cliente = objClienteDAO.pesquisarClientePorId(lista.get(num).getCliente_id());
                    
                    out.print("Valor Total: " + lista.get(num).getValor_total() + "<br>");
                    out.print("Cliente: " + cliente.getNome() + "<br>");
                    }

            } catch (Exception e) {
            }
        %>
    </body>
</html>
