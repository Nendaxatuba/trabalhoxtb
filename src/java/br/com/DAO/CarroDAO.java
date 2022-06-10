package br.com.DAO;

import br.com.model.Carro;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CarroDAO {
    
    Connection con;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<Carro> lista = new ArrayList<>();
    Carro carro = new Carro();
    
    public void cadastrarCarro(Carro objCarro) throws ClassNotFoundException{
        String sql = "insert into alocar.carro (marca, modelo, numero_pessoas) values (?,?,?)";
        con = new ConexaoDAO().conexaoBD();
        try {
            pstm = con.prepareStatement(sql);
            pstm.setString(1, objCarro.getMarca());
            pstm.setString(2, objCarro.getModelo());
            pstm.setInt(3, objCarro.getNumero_pessoas());
            pstm.execute();
            pstm.close();
            
        } catch (SQLException e) {
        }
    }
    
    public ArrayList<Carro> pesquisarCarro() throws ClassNotFoundException{
        String sql = "select * from alocar.carro";
        con = new ConexaoDAO().conexaoBD();
        try {
            pstm = con.prepareStatement(sql);
            rs = pstm.executeQuery(sql);
            while(rs.next()){
                Carro objCarro = new Carro();
                objCarro.setId(rs.getInt("Id"));
                objCarro.setMarca(rs.getString("marca"));
                objCarro.setModelo(rs.getString("modelo"));
                objCarro.setNumero_pessoas(rs.getInt("numero_pessoas"));
                
                lista.add(objCarro);
            }
            pstm.close();
            
        } catch (SQLException e) {
        }
        
        return lista;
    }
    public Carro pesquisarCarroPorId(int id) throws ClassNotFoundException{
        String sql = "select * from alocar.carro where id="+ id;
        con = new ConexaoDAO().conexaoBD();
        try {
            pstm = con.prepareStatement(sql);
            rs = pstm.executeQuery(sql);
            while(rs.next()){
                Carro objCarro = new Carro();
                objCarro.setId(rs.getInt("Id"));
                objCarro.setMarca(rs.getString("marca"));
                objCarro.setModelo(rs.getString("modelo"));
                objCarro.setNumero_pessoas(rs.getInt("numero_pessoas"));
                
                carro = objCarro;
            }
            pstm.close();
            
        } catch (SQLException e) {
        }
        
        return carro;
    }
    
}

