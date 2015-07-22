package br.com.caelum.vraptor.controller;

import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.dao.ClienteDAO;
import br.com.caelum.vraptor.dao.GenericDAO;
import br.com.caelum.vraptor.entidades.Cliente;

@Controller
public class ClienteController {

	@Inject
	private Result result;

	@Inject
	private GenericDAO<Cliente> dao;

	@Inject
	private ClienteDAO clienteDAO;
		
	public void add() {
		result.include("compraList", dao.find());
	}

	public List<Cliente> list() {
		return dao.find();
	}

	public void save(Cliente cliente) {
		dao.save(cliente);
		result.redirectTo(this).list();
	}

	public Cliente edit(Integer idCliente) {
		return dao.find(idCliente);
	}

	public void delete(int idCliente) {
		Cliente cliente = new Cliente();
		cliente.setIdCliente(idCliente);
		dao.delete(cliente);
		result.redirectTo(this).list();
	}
	public void ativo(int idCliente){
		Cliente cliente = dao.find(idCliente);
		cliente.setAtivo(false);
		dao.save(cliente);
		result.redirectTo(this).list();
	}
	public void search() {

	}

	public void search_list(int idCliente) {
		Cliente cliente = clienteDAO.findById(idCliente);
		if (cliente == null) {
			result.redirectTo(this).error();
		}
		result.include("cliente", cliente);
	}

	public void error() {

	}
}