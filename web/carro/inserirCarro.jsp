<%@page import="br.com.DAO.CarroDAO"%>
<%@page import="br.com.model.Carro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Carro</title>
    </head>
    <body>
        <%
            try {
                Carro objCarro = new Carro();
                
                objCarro.setMarca(request.getParameter("marca"));
                objCarro.setModelo(request.getParameter("modelo"));
                objCarro.setNumero_pessoas(Integer.parseInt(request.getParameter("numero_pessoas")));

                CarroDAO objCarroDAO = new CarroDAO();
                objCarroDAO.cadastrarCarro(objCarro);
                out.print("Carro Inserido!!");
            } catch (Exception e) {
            }

        %>
    </body>
</html>
