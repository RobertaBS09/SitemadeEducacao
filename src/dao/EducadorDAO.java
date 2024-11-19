/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;
import beans.educadores;
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
public class EducadorDAO {
     private Conexao conexao;
    private Connection conn;

    public EducadorDAO() {
        this.conexao = new Conexao();
        this.conn = this.conexao.getConexao();
    }
     // Método para inserir um novo educador
    public void inserir(educadores educador) throws SQLException {
        String sql = "INSERT INTO educadores (nome, sobrenome, area, cidade, email) VALUES (?, ?, ?, ?, ?)";
        try {
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            stmt.setString(1, educador.getNome());
            stmt.setString(2, educador.getSobrenome());
            stmt.setString(3, educador.getArea());
            stmt.setString(4, educador.getCidade());
            stmt.setString(5, educador.getEmail());
            stmt.execute();
        } catch (Exception e) {
            System.out.println("Erro ao inserir o educador: " + e.getMessage());
        }
    }
    // Método para alterar um educador
    public void alterar(educadores educador) {
        String sql = "UPDATE educadores SET nome=?, sobrenome=?, area=?, cidade=?, email=? WHERE id=?";
        try {
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            stmt.setString(1, educador.getNome());
            stmt.setString(2, educador.getSobrenome());
            stmt.setString(3, educador.getArea());
            stmt.setString(4, educador.getCidade());
            stmt.setString(5, educador.getEmail());
            stmt.setInt(6, educador.getId());
            stmt.execute();
        } catch (Exception e) {
            System.out.println("Erro ao atualizar o educador: " + e.getMessage());
        }
    }
    
    // Método para excluir um educador
    public void excluir(int id) {
        String sql = "DELETE FROM educadores WHERE id=?";
        try {
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            stmt.setInt(1, id);
            stmt.execute();
        } catch (Exception e) {
            System.out.println("Erro ao excluir educador: " + e.getMessage());
        }
    }
    // Método para obter um educador pelo ID
    public educadores getEducador(int id) {
        String sql = "SELECT * FROM educadores WHERE id=?";
        try {
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            educadores educador = new educadores();
            if (rs.next()) {
                educador.setId(rs.getInt("id"));
                educador.setNome(rs.getString("nome"));
                educador.setSobrenome(rs.getString("sobrenome"));
                educador.setArea(rs.getString("area"));
                educador.setCidade(rs.getString("cidade"));
                educador.setEmail(rs.getString("email"));
            }
            return educador;
        } catch (Exception e) {
            System.out.println("Erro ao obter educador: " + e.getMessage());
            return null;
        }
    }
     // Método para obter todos os educadores
    public List<educadores> getEducadores() {
        String sql = "SELECT * FROM educadores";
        try {
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            List<educadores> listaEducadores = new ArrayList<>();
            while (rs.next()) {
                educadores educador = new educadores();
                educador.setId(rs.getInt("id"));
                educador.setNome(rs.getString("nome"));
                educador.setSobrenome(rs.getString("sobrenome"));
                educador.setArea(rs.getString("area"));
                educador.setCidade(rs.getString("cidade"));
                educador.setEmail(rs.getString("email"));
                listaEducadores.add(educador);
            }
            return listaEducadores;
        } catch (Exception e) {
            System.out.println("Erro ao obter lista de educadores: " + e.getMessage());
            return null;
        }
    }
    
    
    
}
