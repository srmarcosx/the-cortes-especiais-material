package br.com.caelum.vraptor.dao;
import javax.persistence.NoResultException;
import br.com.caelum.vraptor.entidades.ItemEstoque;

public class ItemEstoqueDAO extends GenericJPADAO<ItemEstoque>{
	
	public ItemEstoqueDAO() {
		this.persistentClass = ItemEstoque.class;
	}
}