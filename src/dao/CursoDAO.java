/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;
import beans.cursos;
import conexao.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.sql.SQLException;
/**
 *
 * @author rober
 */
public class CursoDAO {
     private Conexao conexao;
    private Connection conn;

    public CursoDAO() {
        this.conexao = new Conexao();
        this.conn = this.conexao.getConexao();
    }
       // Método para inserir um novo curso
    public void Inserir(cursos curso) throws SQLException {
        // Declaração da variável SQL
        String sql = "INSERT INTO cursos (titulo, descricao, cargahoraria, plataforma) VALUES (?, ?, ?, ?)";
        try {
            // Usa a variável SQL corretamente aqui
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            stmt.setString(1, curso.getTitulo());
            stmt.setString(2, curso.getDescricao());
            stmt.setInt(3, curso.getCargahoraria());
            stmt.setString(4, curso.getPlataforma());
            stmt.execute();
        } catch (Exception e) {
            System.out.println("Erro ao inserir o curso: " + e.getMessage());
        }
    }
     public void alterar(cursos curso) {
        String sql = "UPDATE cursos SET titulo=?, descricao=?, cargahoraria=?, plataforma=? WHERE id=?";
        try {
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            stmt.setString(1, curso.getTitulo());
            stmt.setString(2, curso.getDescricao());
            stmt.setInt(3, curso.getCargahoraria());
            stmt.setString(4, curso.getPlataforma());
            stmt.setInt(5, curso.getId());
            stmt.execute();
        } catch (Exception e) {
            System.out.println("Erro ao atualizar o curso: " + e.getMessage());
        }
    }
     // Método para excluir um curso
    public void excluir(int id) {
        // Declaração da variável SQL
        String sql = "DELETE FROM cursos WHERE id=?";
        
        try {
            // Usa a variável SQL corretamente aqui
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            stmt.setInt(1, id);
            stmt.execute();
        } catch (Exception e) {
            System.out.println("Erro ao excluir curso: " + e.getMessage());
        }
    }
     public cursos getCurso(int id) {
        // Declaração da variável SQL
        String sql = "SELECT * FROM cursos WHERE id=?";
        try {
            // Usa a variável SQL corretamente aqui
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            cursos curso = new cursos();
            if (rs.next()) {
                curso.setId(rs.getInt("id"));
                curso.setTitulo(rs.getString("titulo"));
                curso.setDescricao(rs.getString("descricao"));
                curso.setCargahoraria(rs.getInt("cargahoraria"));
                curso.setPlataforma(rs.getString("plataforma"));
            }
            return curso;
        } catch (Exception e) {
            System.out.println("Erro ao obter curso: " + e.getMessage());
            return null;
        }
    }
      // Método para obter todos os cursos
    public List<cursos> getCursos() {
        // Declaração da variável SQL
        String sql = "SELECT * FROM cursos";
        
        try {
            // Usa a variável SQL corretamente aqui
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            List<cursos> listaCursos = new ArrayList<>();
            
            while (rs.next()) {
                cursos curso = new cursos();
                curso.setId(rs.getInt("id"));
                curso.setTitulo(rs.getString("titulo"));
                curso.setDescricao(rs.getString("descricao"));
                curso.setCargahoraria(rs.getInt("cargahoraria"));
                curso.setPlataforma(rs.getString("plataforma"));
                listaCursos.add(curso);
            }
            return listaCursos;
        } catch (Exception e) {
            System.out.println("Erro ao obter lista de cursos: " + e.getMessage());
            return null;
        }
    }
    
}
    

