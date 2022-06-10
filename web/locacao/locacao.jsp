<%@page import="java.util.ArrayList"%>
<%@page import="br.com.model.Cliente"%>
<%@page import="br.com.DAO.ClienteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="inserirLocacao.jsp" method="POST">

            <label>Valor Total: </label> 
            <input type="number" step="0.01" name="valor_total"><br> 
            <select name="cliente_id">
                <%
                    try {
                        ClienteDAO objClienteDAO = new ClienteDAO();
                        ArrayList<Cliente> lista = objClienteDAO.pesquisarCliente();

                        for (int num = 0; num < lista.size(); num++) {
                            out.print("<option value="+ lista.get(num).getId() +">"+ lista.get(num).getNome() +"</option>");

                            }

                    } catch (Exception e) {
                    }
                %>  
            </select><br> 
            
            <button type="submit">CADASTRAR</button> <br> 
        </form>
        <a href="listarLocacao.jsp">Listar Locações</a>
    </body>
</html>
