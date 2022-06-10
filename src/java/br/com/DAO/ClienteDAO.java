package br.com.DAO;

import br.com.model.Cliente;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ClienteDAO {
    
    Connection con;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<Cliente> lista = new ArrayList<>();
    Cliente cliente = new Cliente();
    
    public void cadastrarCliente(Cliente objCliente) throws ClassNotFoundException{
        String sql = "insert into alocar.cliente (nome, idade, email) values (?,?,?)";
        con = new ConexaoDAO().conexaoBD();
        try {
            pstm = con.prepareStatement(sql);
            pstm.setString(1, objCliente.getNome());
            pstm.setInt(2, objCliente.getIdade());
            pstm.setString(3, objCliente.getEmail());
            pstm.execute();
            pstm.close();
            
        } catch (SQLException e) {
        }
    }
    
    public ArrayList<Cliente> pesquisarCliente() throws ClassNotFoundException{
        String sql = "select * from alocar.cliente";
        con = new ConexaoDAO().conexaoBD();
        try {
            pstm = con.prepareStatement(sql);
            rs = pstm.executeQuery(sql);
            while(rs.next()){
                Cliente objCliente = new Cliente();
                objCliente.setId(rs.getInt("Id"));
                objCliente.setNome(rs.getString("nome"));
                objCliente.setIdade(rs.getInt("idade"));
                objCliente.setEmail(rs.getString("email"));
                
                lista.add(objCliente);
            }
            pstm.close();
            
        } catch (SQLException e) {
        }
        
        return lista;
    }
    
    public Cliente pesquisarClientePorId(int id) throws ClassNotFoundException {
        String sql = "select * from alocar.cliente where id="+ id;
        con = new ConexaoDAO().conexaoBD();
        try {
            pstm = con.prepareStatement(sql);
            rs = pstm.executeQuery(sql);
            while(rs.next()){
                Cliente objCliente = new Cliente();
                objCliente.setId(rs.getInt("Id"));
                objCliente.setNome(rs.getString("nome"));
                objCliente.setIdade(rs.getInt("idade"));
                objCliente.setEmail(rs.getString("email"));
                
                cliente = objCliente;
            }
            pstm.close();
            
        } catch (SQLException e) {
        }
        
        return cliente;
    }
}

