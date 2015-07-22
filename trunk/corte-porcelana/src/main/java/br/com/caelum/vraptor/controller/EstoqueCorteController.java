package br.com.caelum.vraptor.controller;

import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.dao.EstoqueCorteDAO;
import br.com.caelum.vraptor.dao.ItemEstoqueDAO;
import br.com.caelum.vraptor.dao.GenericDAO;
import br.com.caelum.vraptor.entidades.EstoqueCorte;
import br.com.caelum.vraptor.entidades.ItemEstoque;
import br.com.caelum.vraptor.controller.ItemEstoqueController;


@Controller
public class EstoqueCorteController {
	
	@Inject
	private Result result;
	
	@Inject
	private GenericDAO<EstoqueCorte> dao;

	@Inject
	private ItemEstoqueDAO itemEstoqueDAO;
	
	@Inject
	private ItemEstoqueController itemEstoqueController;
	
	public void add(){
		result.include("estoqueCorteList", itemEstoqueDAO.find());

	}
	
	
	public List<ItemEstoque> list(){

		return itemEstoqueDAO.find();
		
	}
	
	public void save(EstoqueCorte estoqueCorte, ItemEstoque itemEstoque){
		itemEstoqueDAO.save(itemEstoque);
		result.redirectTo(this).list();
	}
	
	public EstoqueCorte edit(Integer idEstoqueCorte){
		return dao.find(idEstoqueCorte);
	}
	
	public void delete(int idEstoqueCorte){
		EstoqueCorte estoqueCorte = new EstoqueCorte();
		estoqueCorte.setIdEstoqueCorte(idEstoqueCorte);
		dao.delete(estoqueCorte);
		result.redirectTo(this).list();
	}
}
