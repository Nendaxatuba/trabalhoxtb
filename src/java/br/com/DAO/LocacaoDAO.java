package br.com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import br.com.model.Locacao;

public class LocacaoDAO {
    Connection con;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<Locacao> lista = new ArrayList<>();
    Locacao locacao = new Locacao();
    
    public void cadastrarLocacao(Locacao objLocacao) throws ClassNotFoundException{
        String sql = "insert into alocar.locacao (valor_total, cliente_id) values (?,?)";
        con = new ConexaoDAO().conexaoBD();
        try {
            pstm = con.prepareStatement(sql);
            pstm.setDouble(1, objLocacao.getValor_total());
            pstm.setInt(2, objLocacao.getCliente_id());
            pstm.execute();
            pstm.close();
            
        } catch (SQLException e) {
        }
    }
    
    public ArrayList<Locacao> pesquisarLocacao() throws ClassNotFoundException{
        String sql = "select * from alocar.locacao";
        con = new ConexaoDAO().conexaoBD();
        try {
            pstm = con.prepareStatement(sql);
            rs = pstm.executeQuery(sql);
            while(rs.next()){
                Locacao objLocacao = new Locacao();
                objLocacao.setId(rs.getInt("Id"));
                objLocacao.setValor_total(rs.getDouble("valor_total"));
                objLocacao.setCliente_id(rs.getInt("cliente_id"));
                
                lista.add(objLocacao);
            }
            pstm.close();
            
        } catch (SQLException e) {
        }
        
        return lista;
    }
    public Locacao pesquisarLocacaoPorId(int id) throws ClassNotFoundException{
        String sql = "select * from alocar.locacao where id="+ id;
        con = new ConexaoDAO().conexaoBD();
        try {
            pstm = con.prepareStatement(sql);
            rs = pstm.executeQuery(sql);
            while(rs.next()){
                Locacao objLocacao = new Locacao();
                objLocacao.setId(rs.getInt("Id"));
                objLocacao.setValor_total(rs.getDouble("valor_total"));
                objLocacao.setCliente_id(rs.getInt("cliente_id"));
                
                locacao = objLocacao;
            }
            pstm.close();
            
        } catch (SQLException e) {
        }
        
        return locacao;
    }
}
