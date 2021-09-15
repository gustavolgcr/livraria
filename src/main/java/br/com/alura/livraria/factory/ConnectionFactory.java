package br.com.alura.livraria.factory;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory {

	public Connection getConnection() {

		try {
			String url = "jdbc:mysql://localhost:3306/livraria";
			String user = "root";
			String password = "12345678";

			Class.forName("com.mysql.cj.jdbc.Driver");

			Connection conexao = DriverManager.getConnection(url, user, password);

			return conexao;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}

	}

}
