package br.com.caelum.vraptor.dao;

import br.com.caelum.vraptor.entidades.EstoqueSobra;

public class EstoqueSobraDAO extends GenericJPADAO<EstoqueSobra>{
	
	public EstoqueSobraDAO(){
		this.persistentClass = EstoqueSobra.class;
	}

}