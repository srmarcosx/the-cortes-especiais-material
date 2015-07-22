package br.com.caelum.vraptor.controller;

import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.dao.GenericDAO;
import br.com.caelum.vraptor.entidades.Funcionario;

@Controller
public class FuncionarioController {

	@Inject
	private Result result;
	
	@Inject
	private GenericDAO<Funcionario> dao;
	
	
	public void add(){
		
	}
	
	
	public List<Funcionario> list(){
		
		return dao.find();
		
	}
	
	public void save(Funcionario funcionario){
		
		dao.save(funcionario);
		
		result.redirectTo(this).list();
	}
	
	public Funcionario edit(Integer idFuncionario){
		return dao.find(idFuncionario);
	}
	
	public void delete(int idFuncionario){
		Funcionario funcionario = new Funcionario();
		funcionario.setIdFuncionario(idFuncionario);
		dao.delete(funcionario);
		result.redirectTo(this).list();
	}
}
