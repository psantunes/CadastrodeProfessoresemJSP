package br.edu.ifrs.poa.dao;

import java.sql.*;

import br.edu.ifrs.poa.classes.Usuario;

public class UsuarioDAO {

	public static boolean authenticate(Usuario obj) throws Exception {
		boolean status = false;
		try(Connection connection = new ConnectionFactory().getConnection();
				PreparedStatement stmt = connection.prepareStatement(Querys.AUTHENTICATE.getQuery(),
								Statement.RETURN_GENERATED_KEYS)) {
			stmt.setString(1, obj.getNome());
			stmt.setString(2, obj.getSenha());
			stmt.execute();
            ResultSet result = stmt.executeQuery();
            if (result.next()) {
            	status = true;
            }
        } catch (Exception e) {
            System.out.println("Erro na validação de nome e senha");
            e.printStackTrace();
        }
		return status;
    }
}
