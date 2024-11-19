/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;
import beans.saopoio;
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
public class SApoioDAO {
    private Conexao conexao;
    private Connection conn;

    public SApoioDAO() {
        this.conexao = new Conexao();
        this.conn = this.conexao.getConexao();
    }
     // Método para inserir um novo material de apoio
    public void inserir(saopoio apoio) throws SQLException {
        String sql = "INSERT INTO sapoio (materia, site, tarefasemana) VALUES (?, ?, ?)";
        try {
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            stmt.setString(1, apoio.getMateria());
            stmt.setString(2, apoio.getSite());
            stmt.setString(3, apoio.getTarefasemana());
            stmt.execute();
        } catch (Exception e) {
            System.out.println("Erro ao inserir material de apoio: " + e.getMessage());
        }
    }
    
    // Método para alterar um material de apoio
    public void alterar(saopoio apoio) {
        String sql = "UPDATE sapoio SET materia=?, site=?, tarefasemana=? WHERE id=?";
        try {
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            stmt.setString(1, apoio.getMateria());
            stmt.setString(2, apoio.getSite());
            stmt.setString(3, apoio.getTarefasemana());
            stmt.setInt(4, apoio.getId());
            stmt.execute();
        } catch (Exception e) {
            System.out.println("Erro ao atualizar material de apoio: " + e.getMessage());
        }
    }
    // Método para excluir um material de apoio
    public void excluir(int id) {
        String sql = "DELETE FROM sapoio WHERE id=?";
        try {
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            stmt.setInt(1, id);
            stmt.execute();
        } catch (Exception e) {
            System.out.println("Erro ao excluir material de apoio: " + e.getMessage());
        }
    }
     // Método para obter um material de apoio pelo ID
    public saopoio getSApoio(int id) {
        String sql = "SELECT * FROM sapoio WHERE id=?";
        try {
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            saopoio apoio = new saopoio();
            if (rs.next()) {
                apoio.setId(rs.getInt("id"));
                apoio.setMateria(rs.getString("materia"));
                apoio.setSite(rs.getString("site"));
                apoio.setTarefasemana(rs.getString("tarefasemana"));
            }
            return apoio;
        } catch (Exception e) {
            System.out.println("Erro ao obter material de apoio: " + e.getMessage());
            return null;
        }
    }
    // Método para obter todos os materiais de apoio
    public List<saopoio> getSApoios() {
        String sql = "SELECT * FROM sapoio";
        try {
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            List<saopoio> listaApoios = new ArrayList<>();
            while (rs.next()) {
                saopoio apoio = new saopoio();
                apoio.setId(rs.getInt("id"));
                apoio.setMateria(rs.getString("materia"));
                apoio.setSite(rs.getString("site"));
                apoio.setTarefasemana(rs.getString("tarefasemana"));
                listaApoios.add(apoio);
            }
            return listaApoios;
        } catch (Exception e) {
            System.out.println("Erro ao obter lista de materiais de apoio: " + e.getMessage());
            return null;
        }
    }
    
}
