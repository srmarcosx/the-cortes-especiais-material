package br.com.caelum.vraptor.controller;

import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.dao.EstoqueSobraDAO;
import br.com.caelum.vraptor.dao.GenericDAO;
import br.com.caelum.vraptor.entidades.EstoqueSobra;

@Controller
public class EstoqueSobraController {
	
	@Inject
	private Result result;
	
	@Inject
	private GenericDAO<EstoqueSobra> dao;
	
	
	public void add(){
		
	}
	
	
	public List<EstoqueSobra> list(){
		
		return dao.find();
		
	}
	
	public void save(EstoqueSobra estoqueSobra){
		
		dao.save(estoqueSobra);
		
		result.redirectTo(this).list();
	}
	
	public EstoqueSobra edit(Integer idEstoqueSobra){
		return dao.find(idEstoqueSobra);
	}
	
	public void delete(int idEstoqueSobra){
		EstoqueSobra estoqueSobra = new EstoqueSobra();
		estoqueSobra.setIdEstoqueSobra(idEstoqueSobra);
		dao.delete(estoqueSobra);
		result.redirectTo(this).list();
	}
}
