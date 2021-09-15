package br.com.alura.livraria.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import br.com.alura.livraria.modelo.Autor;

public class AutorDao {

	private Connection connection;

	public AutorDao(Connection connection) {
		this.connection = connection;
	}

	public void cadastrar(Autor autor) {
		String sql = "INSERT INTO autores (nome, email, dataNascimento, miniCV) VALUES (?, ?, ?, ?)";

		try {
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setString(1, autor.getNome());
			ps.setString(2, autor.getEmail());
			ps.setDate(3, Date.valueOf(autor.getDataNascimento()));
			ps.setString(4, autor.getMiniCV());

			ps.execute();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public List<Autor> listar() {

		List<Autor> listaAutores = new ArrayList<Autor>();
		String sql = "SELECT * FROM autores";

		try {
			PreparedStatement ps = connection.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				String nome = rs.getString("nome");
				String email = rs.getString("email");
				LocalDate dataNascimento = rs.getDate("dataNascimento").toLocalDate();
				String miniCV = rs.getString("miniCV");

				Autor autor = new Autor(nome, email, dataNascimento, miniCV);
				listaAutores.add(autor);

			}

			return listaAutores;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

//	construtor
//	cadastrar
//	listar

}
