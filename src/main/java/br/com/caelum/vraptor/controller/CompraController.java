package br.com.caelum.vraptor.controller;

import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.dao.ClienteDAO;
import br.com.caelum.vraptor.dao.GenericDAO;
import br.com.caelum.vraptor.entidades.Compra;

@Controller
public class CompraController {

	@Inject
	private Result result;

	@Inject
	private GenericDAO<Compra> dao;

	@Inject
	private ClienteDAO clienteDAO;

	public void add() {
		result.include("clienteList", clienteDAO.find());
	}

	public List<Compra> list() {

		return dao.find();

	}

	public void save(Compra compra) {
		dao.save(compra);
		result.redirectTo(this).list();
	}

	public Compra edit(Integer idCompra) {
		return dao.find(idCompra);
	}

	public void delete(int idCompra) {
		result.include("clienteList", clienteDAO.find());
		Compra compra = new Compra();
		compra.setIdCompra(idCompra);
		dao.delete(compra);
		result.redirectTo(this).list();
	}
}
