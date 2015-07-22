package br.com.caelum.vraptor.controller;

import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.dao.GenericDAO;
import br.com.caelum.vraptor.entidades.ItemEstoque;

@Controller
public class ItemEstoqueController {

	@Inject
	private Result result;

	@Inject
	private GenericDAO<ItemEstoque> dao;

	public void add() {

	}

	public List<ItemEstoque> list() {
		return dao.find();

	}

	public void save(ItemEstoque itemEstoque) {
		dao.save(itemEstoque);
		result.redirectTo(this).list();
	}

	public ItemEstoque edit(Integer idItem) {
		return dao.find(idItem);
	}

	public void delete(int idItem) {
		ItemEstoque itemEstoque = new ItemEstoque();
		itemEstoque.setIdItem(idItem);
		dao.delete(itemEstoque);
		result.redirectTo(this).list();
	}
}
