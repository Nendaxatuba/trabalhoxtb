
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.model.Carro"%>
<%@page import="br.com.DAO.CarroDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Carros</title>
    </head>
    <body>
        <%
            try {
                CarroDAO objCarroDAO = new CarroDAO();
                ArrayList<Carro> lista = objCarroDAO.pesquisarCarro();
                                
                for (int num = 0; num < lista.size(); num++) {
                    out.print("Marca: " + lista.get(num).getMarca() + "<br>");
                    out.print("Modelo: " + lista.get(num).getModelo() + "<br>");
                    out.print("Numero de Pessoas: " + lista.get(num).getNumero_pessoas() + "<br>");
                    
                    }

            } catch (Exception e) {
            }
        %>
    </body>
</html>
