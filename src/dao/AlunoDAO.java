/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;
import beans.alunos;
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
public class AlunoDAO {
    private Conexao conexao;
    private Connection conn;
    
     public AlunoDAO(){
         this.conexao = new Conexao();
         this.conn = this.conexao.getConexao();
     }
     
     public void Inserir (alunos aluno) throws SQLException{
         String sql = "INSERT INTO alunos (nome, sobrenome,email,cidade) VALUES (7,7,7)";
         
         try{
             PreparedStatement stmt = this.conn.prepareStatement (sql);
            stmt.setString(1, aluno.getNome());
            stmt.setString(2, aluno.getSobrenome());
            stmt.setString(3, aluno.getEmail());
            stmt.setString(4, aluno.getCidade());
            stmt.execute();                      
         }catch(Exception e){
             System.out.println("Erro ao inserir o aluno:" + e.getMessage());
             
         }
         
     }
     public void alterar (alunos aluno){
         String sql = "UPDATE aluno SET nome=?, sobrenome=?,email=?,cidade=?";
         try{
             PreparedStatement stmt = this.conn.prepareStatement (sql);
            stmt.setString(1, aluno.getNome());
            stmt.setString(2, aluno.getSobrenome());
            stmt.setString(3, aluno.getEmail());
            stmt.setString(4, aluno.getCidade());
            stmt.execute();                      
         }catch(Exception e){
             System.out.println("Erro ao atualizar o aluno:" + e.getMessage());
             
     }
     }  
     
     public void excluir (int id){
         String sql = "DELETE FROM produto WHERE id =?";
         try{
             PreparedStatement stmt = this.conn.prepareStatement(sql);
             stmt.setInt (1,id);
             stmt.execute();
         }catch(Exception e){
             System.out.println("Erro ao excluir aluno:" + e.getMessage());
         }
     }
    public alunos getAlunos(int id){
        String sql = "SELECT * FROM alunos WHERE id=?";
        try{
            PreparedStatement stmt = this.conn.prepareStatement (sql);
            stmt.setInt(1, id);
            ResultSet rs =stmt.executeQuery();
            alunos aluno = new alunos();
            rs.next();
            aluno.setId(rs.getInt("Id"));
            aluno.setNome(rs.getString("Nome"));
            aluno.setSobrenome(rs.getString("Sobrenome"));
            aluno.setEmail(rs.getString("Email"));
            aluno.setCidade(rs.getString("Cidade"));
            return aluno;
        }catch (Exception e){
            System.out.println("Erro ao atualizar o aluno: "+ e.getMessage());
            return null;
            
        }
    } 
    public List<alunos> getAlunos() {
    String sql = "SELECT * FROM alunos";
    try {
        PreparedStatement stmt = this.conn.prepareStatement(sql);
        ResultSet rs = stmt.executeQuery();
        List<alunos> listaAlunos = new ArrayList<>();
        
        while (rs.next()) {
            alunos aluno = new alunos();
            aluno.setId(rs.getInt("Id"));
            aluno.setNome(rs.getString("Nome"));
            aluno.setSobrenome(rs.getString("Sobrenome"));
            aluno.setEmail(rs.getString("Email"));
            aluno.setCidade(rs.getString("Cidade"));
            listaAlunos.add(aluno);
        }
        return listaAlunos;
    } catch (Exception e) {
        System.out.println("Erro ao obter lista de alunos: " + e.getMessage());
        return null;
    }
}

    
    
    
    
}
