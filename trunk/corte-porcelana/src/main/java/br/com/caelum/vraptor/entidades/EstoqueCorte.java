package br.com.caelum.vraptor.entidades;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class EstoqueCorte {

	@Id
	@GeneratedValue
	private int idEstoqueCorte;

	@ManyToOne
	private ItemEstoque itemEstoque;

	public EstoqueCorte() {

	}

	public int getIdEstoqueCorte() {
		return idEstoqueCorte;
	}

	public void setIdEstoqueCorte(int idEstoqueCorte) {
		this.idEstoqueCorte = idEstoqueCorte;
	}

	public ItemEstoque getItemEstoque() {
		return itemEstoque;
	}

	public void setItemEstoque(ItemEstoque itemEstoque) {
		this.itemEstoque = itemEstoque;
	}

}
