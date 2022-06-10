package br.com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import br.com.model.ItemLoca;

public class ItemLocaDAO {
    Connection con;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<ItemLoca> lista = new ArrayList<>();
    
    public void cadastrarItemLoca(ItemLoca objItemLoca) throws ClassNotFoundException{
        String sql = "insert into alocar.item_loca (locacao_id, carro_id) values (?,?)";
        con = new ConexaoDAO().conexaoBD();
        try {
            pstm = con.prepareStatement(sql);
            pstm.setInt(1, objItemLoca.getLocacao_id());
            pstm.setInt(2, objItemLoca.getCarro_id());
            pstm.execute();
            pstm.close();
            
        } catch (SQLException e) {
        }
    }
    
    public ArrayList<ItemLoca> pesquisarItemLoca() throws ClassNotFoundException{
        String sql = "select * from alocar.item_loca";
        con = new ConexaoDAO().conexaoBD();
        try {
            pstm = con.prepareStatement(sql);
            rs = pstm.executeQuery(sql);
            while(rs.next()){
                ItemLoca objItemLoca = new ItemLoca();
                objItemLoca.setId(rs.getInt("Id"));
                objItemLoca.setLocacao_id(rs.getInt("locacao_id"));
                objItemLoca.setCarro_id(rs.getInt("carro_id"));
                
                lista.add(objItemLoca);
            }
            pstm.close();
            
        } catch (SQLException e) {
        }
        
        return lista;
    }
}
