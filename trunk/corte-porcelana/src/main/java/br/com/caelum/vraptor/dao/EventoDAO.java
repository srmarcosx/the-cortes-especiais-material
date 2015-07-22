package br.com.caelum.vraptor.dao;

import br.com.caelum.vraptor.entidades.Evento;

public class EventoDAO extends GenericJPADAO<Evento>{
	
	public EventoDAO() {
		this.persistentClass = Evento.class;
	}
	
}
