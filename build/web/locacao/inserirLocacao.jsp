<%@page import="br.com.DAO.LocacaoDAO"%>
<%@page import="br.com.model.Locacao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Locacao</title>
    </head>
    <body>
        <%
            try {
                Locacao objLocacao = new Locacao();
                objLocacao.setValor_total(Double.parseDouble(request.getParameter("valor_total")));
                objLocacao.setCliente_id(Integer.parseInt(request.getParameter("cliente_id")));
                
                LocacaoDAO objLocacaoDAO = new LocacaoDAO();
                objLocacaoDAO.cadastrarLocacao(objLocacao);
                out.print("Locacao Inserido!!");
            } catch (Exception e) {
            }

        %>
    </body>
</html>
