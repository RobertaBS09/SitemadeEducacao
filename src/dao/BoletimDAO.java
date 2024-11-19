/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;
import beans.boletim;
import conexao.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author rober
 */
public class BoletimDAO {
     private Conexao conexao;
    private Connection conn;
    
    public BoletimDAO() {
        this.conexao = new Conexao();
        this.conn = this.conexao.getConexao();
}public void Inserir(boletim boletim) throws SQLException {
        // Declaração da variável SQL
        String sql = "INSERT INTO boletim (materia, notamin1, notamin2, notanecess) VALUES (?, ?, ?, ?)";
        
        try {
            // Usa a variável SQL corretamente aqui
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            stmt.setString(1, boletim.getMateria());
            stmt.setDouble(2, boletim.getNotamin1());
            stmt.setDouble(3, boletim.getNotamin2());
            stmt.setDouble(4, boletim.getNotanecess());
            stmt.execute();
        } catch (Exception e) {
            System.out.println("Erro ao inserir o boletim: " + e.getMessage());
        }
    }
 public void alterar(boletim boletim) {
        // Declaração da variável SQL
        String sql = "UPDATE boletim SET materia=?, notamin1=?, notamin2=?, notanecess=? WHERE id=?";
        
        try {
            // Usa a variável SQL corretamente aqui
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            stmt.setString(1, boletim.getMateria());
            stmt.setDouble(2, boletim.getNotamin1());
            stmt.setDouble(3, boletim.getNotamin2());
            stmt.setDouble(4, boletim.getNotanecess());
            stmt.setInt(5, boletim.getId());
            stmt.execute();
        } catch (Exception e) {
            System.out.println("Erro ao atualizar o boletim: " + e.getMessage());
        }
    }
public void excluir(int id) {
        // Declaração da variável SQL
        String sql = "DELETE FROM boletim WHERE id=?";
        
        try {
            // Usa a variável SQL corretamente aqui
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            stmt.setInt(1, id);
            stmt.execute();
        } catch (Exception e) {
            System.out.println("Erro ao excluir boletim: " + e.getMessage());
        }
    }
 public boletim getBoletim(int id) {
        // Declaração da variável SQL
        String sql = "SELECT * FROM boletim WHERE id=?";
        
        try {
            // Usa a variável SQL corretamente aqui
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            boletim boletim = new boletim();
            if (rs.next()) {
                boletim.setId(rs.getInt("id"));
                boletim.setMateria(rs.getString("materia"));
                boletim.setNotamin1(rs.getDouble("notamin1"));
                boletim.setNotamin2(rs.getDouble("notamin2"));
                boletim.setNotanecess(rs.getDouble("notanecess"));
            }
            return boletim;
        } catch (Exception e) {
            System.out.println("Erro ao obter boletim: " + e.getMessage());
            return null;
        }
    }
 public List<boletim> getBoletins() {
        // Declaração da variável SQL
        String sql = "SELECT * FROM boletim";
        
        try {
            // Usa a variável SQL corretamente aqui
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            List<boletim> listaBoletins = new ArrayList<>();
            
            while (rs.next()) {
                boletim boletim = new boletim();
                boletim.setId(rs.getInt("id"));
                boletim.setMateria(rs.getString("materia"));
                boletim.setNotamin1(rs.getDouble("notamin1"));
                boletim.setNotamin2(rs.getDouble("notamin2"));
                boletim.setNotanecess(rs.getDouble("notanecess"));
                listaBoletins.add(boletim);
            }
            return listaBoletins;
        } catch (Exception e) {
            System.out.println("Erro ao obter lista de boletins: " + e.getMessage());
            return null;
        }
    }

}


