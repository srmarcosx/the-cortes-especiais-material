package br.com.caelum.vraptor.dao;

import javax.persistence.NoResultException;

import br.com.caelum.vraptor.entidades.Cliente;
import br.com.caelum.vraptor.entidades.Compra;

public class CompraDAO extends GenericJPADAO<Compra>{
	
	public CompraDAO() {
		this.persistentClass = Compra.class;
	}

}
