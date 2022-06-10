<%@page import="br.com.DAO.ItemLocaDAO"%>
<%@page import="br.com.model.ItemLoca"%>
<%@page import="br.com.DAO.LocacaoDAO"%>
<%@page import="br.com.model.Locacao"%>
<%@page import="br.com.DAO.CarroDAO"%>
<%@page import="br.com.model.Carro"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Item-Locações</title>
    </head>
    <body>
        <%
            try {
                ItemLocaDAO objItemLocaDAO = new ItemLocaDAO();
                ArrayList<ItemLoca> lista = objItemLocaDAO.pesquisarItemLoca();
                CarroDAO objCarroDAO = new CarroDAO();
                LocacaoDAO objLocacaoDAO = new LocacaoDAO();


                for (int num = 0; num < lista.size(); num++) {
                    Carro carro = objCarroDAO.pesquisarCarroPorId(lista.get(num).getCarro_id());
                    Locacao locacao = objLocacaoDAO.pesquisarLocacaoPorId(lista.get(num).getLocacao_id());

                    out.print("Carro: " + carro.getModelo() + "<br>");
                    out.print("Valor da Locação: " + locacao.getValor_total() + "<br>");
                    }

            } catch (Exception e) {
            }
        %>
    </body>
</html>