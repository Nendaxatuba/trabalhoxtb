<%@page import="br.com.DAO.ItemLocaDAO"%>
<%@page import="br.com.model.ItemLoca"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Item Locação</title>
    </head>
    <body>
        <%
            try {
                ItemLoca objItemLoca = new ItemLoca();
                objItemLoca.setLocacao_id(Integer.parseInt(request.getParameter("locacao_id")));
                objItemLoca.setCarro_id(Integer.parseInt(request.getParameter("carro_id")));
                
                ItemLocaDAO objItemLocaDAO = new ItemLocaDAO();
                objItemLocaDAO.cadastrarItemLoca(objItemLoca);
                out.print("ItemLoca Inserido!!");
            } catch (Exception e) {
            }

        %>
    </body>
</html>
