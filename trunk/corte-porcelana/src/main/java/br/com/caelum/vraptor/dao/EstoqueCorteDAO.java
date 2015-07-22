package br.com.caelum.vraptor.dao;

import br.com.caelum.vraptor.entidades.EstoqueCorte;

public class EstoqueCorteDAO extends GenericJPADAO<EstoqueCorte>{
	
	public EstoqueCorteDAO(){
		this.persistentClass = EstoqueCorte.class;
	}

}
