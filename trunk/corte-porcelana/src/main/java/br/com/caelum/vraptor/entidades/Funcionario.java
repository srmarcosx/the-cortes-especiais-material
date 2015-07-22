package br.com.caelum.vraptor.entidades;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Funcionario {

	@Id @GeneratedValue
	private int idFuncionario;
	private String nome;
	private String endereco;
	private String telefone;
	private String cpf;
	private String infoExtras;
	
	public Funcionario() {
	
	}
	
	public int getIdFuncionario() {
		return idFuncionario;
	}
	
	public void setIdFuncionario(int idFuncionario) {
		this.idFuncionario = idFuncionario;
	}
	
	public String getNome() {
		return nome;
	}
	
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public String getEndereco() {
		return endereco;
	}
	
	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}
	
	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getInfoExtras() {
		return infoExtras;
	}
	
	public void setInfoExtras(String infoExtras) {
		this.infoExtras = infoExtras;
	}

}
