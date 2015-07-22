package br.com.caelum.vraptor.entidades;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class EstoqueSobra {

	@Id @GeneratedValue
	private int idEstoqueSobra;
	private String nome;
	private int quantidade;
	
	public EstoqueSobra() {
		
	}

	public int getIdEstoqueSobra() {
		return idEstoqueSobra;
	}

	public void setIdEstoqueSobra(int idEstoqueSobra) {
		this.idEstoqueSobra = idEstoqueSobra;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public int getQuantidade() {
		return quantidade;
	}

	public void setQuantidade(int quantidade) {
		this.quantidade = quantidade;
	}
	
}
