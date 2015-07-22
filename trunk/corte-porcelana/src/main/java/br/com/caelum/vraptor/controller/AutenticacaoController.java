package br.com.caelum.vraptor.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.components.UsuarioWeb;
import br.com.caelum.vraptor.entidades.Usuario;

@Controller
public class AutenticacaoController {
	
	@Inject
	private Result result;
	
	@Inject
	private UsuarioWeb usuarioWeb;
	
	public AutenticacaoController() {
		// TODO Auto-generated constructor stub
	}
	
	public void login(){
		Usuario usuario = new Usuario();
		usuario.setLogin("rogerio410");
		usuario.setName("Rogério da Silva");
		
		usuarioWeb.login(usuario);
		
		result.redirectTo(IndexController.class).index();
	}
	
	public void logout(){
		usuarioWeb.logout();
		
		result.redirectTo(IndexController.class).index();
	}

}
