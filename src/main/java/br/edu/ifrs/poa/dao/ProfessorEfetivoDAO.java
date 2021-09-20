package br.edu.ifrs.poa.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import br.edu.ifrs.poa.classes.ProfessorEfetivo;

public class ProfessorEfetivoDAO implements GenericDAO<ProfessorEfetivo> {

	@Override
	public int create(ProfessorEfetivo obj) {
		int pk = -1;
		try(Connection connection = new ConnectionFactory().getConnection();
				PreparedStatement stmt = 
						connection.prepareStatement(Querys.CREATE_PROFESSOR_EFETIVO.getQuery(),
								Statement.RETURN_GENERATED_KEYS)){
			stmt.setString(1, obj.getNome());
			stmt.setLong(2, obj.getMatricula());
			stmt.setDouble(3, obj.getSalario());
			stmt.execute();
			ResultSet keys = stmt.getGeneratedKeys();
			if (keys.next()) pk = keys.getInt(1);
		}catch(SQLException e){
			System.out.println("Ocorreu uma exceção no cadastro de professor efetivo");
			e.printStackTrace();
		}catch(ClassNotFoundException e){
			e.printStackTrace();
			System.out.println("Classe não encontrada no cadastro de professor efetivo");
		}
		return pk;
	}

	@Override
	public List<ProfessorEfetivo> listAll() {
		List<ProfessorEfetivo> lista = new ArrayList<ProfessorEfetivo>();

		try(Connection connection = new ConnectionFactory().getConnection();
				PreparedStatement stmt = 
						connection.prepareStatement(Querys.LIST_ALL_PROFESSOR_EFETIVO.getQuery())){
			ResultSet rs = stmt.executeQuery();
			while(rs.next()){
				String nome = rs.getString("nome");
				Long matricula = rs.getLong("matricula");
				Double salario = rs.getDouble("salario");
				lista.add(new ProfessorEfetivo(nome, matricula, salario));
			}
			return lista;
		}catch(SQLException e){ System.out.println("Ocorreu uma exceção ao tenta acessar o BD para montar a lista de professores efetivos");
		}catch(Exception e){  System.out.println("Ocorreu uma exceção ao criar a lista de professores efetivos");
		}
		return null;
	}

}
