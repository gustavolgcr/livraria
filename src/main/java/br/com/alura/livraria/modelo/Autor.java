package br.com.alura.livraria.modelo;

import java.time.LocalDate;

public class Autor {

	private String nome;
	private String email;
	private LocalDate dataNascimento;
	private String miniCV;

	public Autor(String nome, String email, LocalDate dataNascimento, String miniCV) {
		this.nome = nome;
		this.email = email;
		this.dataNascimento = dataNascimento;
		this.miniCV = miniCV;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public LocalDate getDataNascimento() {
		return dataNascimento;
	}

	public void setDataNascimento(LocalDate dataNascimento) {
		this.dataNascimento = dataNascimento;
	}

	public String getMiniCV() {
		return miniCV;
	}

	public void setMiniCV(String miniCV) {
		this.miniCV = miniCV;
	}

	@Override
	public String toString() {
		return "Autor [nome=" + nome + ", email=" + email + ", dataNascimento=" + dataNascimento + ", miniCV=" + miniCV
				+ "]";
	}

}
