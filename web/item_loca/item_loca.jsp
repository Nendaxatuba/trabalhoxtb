<%@page import="java.util.ArrayList"%>
<%@page import="br.com.model.Carro"%>
<%@page import="br.com.DAO.CarroDAO"%>
<%@page import="br.com.model.Locacao"%>
<%@page import="br.com.DAO.LocacaoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="inserirItemLoca.jsp" method="POST">

			<select name="locacao_id">
                <%
                    try {
                        LocacaoDAO objLocacaoDAO = new LocacaoDAO();
                        ArrayList<Locacao> lista = objLocacaoDAO.pesquisarLocacao();

                        for (int num = 0; num < lista.size(); num++) {
                            out.print("<option value="+ lista.get(num).getId() +">"+ lista.get(num).getId() +"</option>");
                            }

                    } catch (Exception e) {
                    }
                %>  
            </select><br> 
            <select name="carro_id">
                <%
                    try {
                        CarroDAO objCarroDAO = new CarroDAO();
                        ArrayList<Carro> lista = objCarroDAO.pesquisarCarro();

                        for (int num = 0; num < lista.size(); num++) {
                            out.print("<option value="+ lista.get(num).getId() +">"+ lista.get(num).getModelo() +"</option>");
                            }

                    } catch (Exception e) {
                    }
                %>  
            </select><br> 
            
            <button type="submit">CADASTRAR</button> <br> 
        </form>
        <a href="listarItemLoca.jsp">Listar Item Locações</a>
    </body>
</html>
