package br.com.caelum.vraptor.dao;

import br.com.caelum.vraptor.entidades.Funcionario;

public class FuncionarioDAO extends GenericJPADAO<Funcionario>{
	public FuncionarioDAO() {
		this.persistentClass = Funcionario.class;
	}
}
