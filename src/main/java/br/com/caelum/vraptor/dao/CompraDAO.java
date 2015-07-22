package br.com.caelum.vraptor.dao;

import br.com.caelum.vraptor.entidades.Compra;

public class CompraDAO extends GenericJPADAO<Compra>{
	
	public CompraDAO() {
		this.persistentClass = Compra.class;
	}

}
