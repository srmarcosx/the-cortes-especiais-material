package br.com.caelum.vraptor.dao;
import javax.persistence.NoResultException;
import br.com.caelum.vraptor.entidades.Cliente;

public class ClienteDAO extends GenericJPADAO<Cliente>{
	
	public ClienteDAO() {
		this.persistentClass = Cliente.class;
	}
	 public Cliente findById(Object id){
         try{
         Cliente cliente = getEm().createQuery("select c from Cliente c where c.idCliente = :idCliente", Cliente.class)
         .setParameter("idCliente", id)
         .getSingleResult();
         return cliente;
         }
         catch(NoResultException e){
                 e.printStackTrace();
                 return null;
         }
 }
}
