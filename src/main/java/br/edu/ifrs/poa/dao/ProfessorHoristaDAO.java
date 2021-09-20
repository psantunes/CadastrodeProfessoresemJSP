package br.edu.ifrs.poa.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import br.edu.ifrs.poa.classes.ProfessorHorista;

public class ProfessorHoristaDAO implements GenericDAO<ProfessorHorista> {

	@Override
	public int create(ProfessorHorista obj) {
		int pk = -1;
		try(Connection connection = new ConnectionFactory().getConnection();
				PreparedStatement stmt = 
						connection.prepareStatement(Querys.CREATE_PROFESSOR_HORISTA.getQuery(),
								Statement.RETURN_GENERATED_KEYS)){
			stmt.setString(1, obj.getNome());
			stmt.setLong(2, obj.getMatricula());
			stmt.setInt(3, obj.getTotalHoras());
			stmt.setDouble(4, obj.getValorHora());
			stmt.execute();
			ResultSet keys = stmt.getGeneratedKeys();
			if (keys.next()) pk = keys.getInt(1);
		}catch(SQLException e){
			System.out.println("Ocorreu uma exceção no cadastro de professor horista");
			e.printStackTrace();
		}catch(ClassNotFoundException e){
			e.printStackTrace();
			System.out.println("Classe não encontrada no cadastro de professor horista");
		}
		return pk;	}

	@Override
	public List<ProfessorHorista> listAll() {
		List<ProfessorHorista> lista = new ArrayList<ProfessorHorista>();

		try(Connection connection = new ConnectionFactory().getConnection();
				PreparedStatement stmt = 
						connection.prepareStatement(Querys.LIST_ALL_PROFESSOR_HORISTA.getQuery())){
			ResultSet rs = stmt.executeQuery();
			while(rs.next()){
				String nome = rs.getString("nome");
				Long matricula = rs.getLong("matricula");
				int totalHoras = rs.getInt("totalHoras");
				Double valorHora = rs.getDouble("valorHora");
				lista.add(new ProfessorHorista(nome, matricula, totalHoras, valorHora));
			}
			return lista;
		}catch(SQLException e){ System.out.println("Ocorreu uma exceção ao tenta acessar o BD para montar a lista de professores efetivos");
		}catch(Exception e){  System.out.println("Ocorreu uma exceção ao criar a lista de professores efetivos");
		}
		return null;
	}
}
