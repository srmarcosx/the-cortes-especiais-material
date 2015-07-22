package br.com.caelum.vraptor.util;

import javax.inject.Inject;

import br.com.caelum.vraptor.AroundCall;
import br.com.caelum.vraptor.Intercepts;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.auth_annotations.Restrito;
import br.com.caelum.vraptor.components.UsuarioWeb;
import br.com.caelum.vraptor.controller.IndexController;
import br.com.caelum.vraptor.interceptor.AcceptsWithAnnotations;
import br.com.caelum.vraptor.interceptor.SimpleInterceptorStack;

@Intercepts
@AcceptsWithAnnotations(Restrito.class)
public class AuthenticationInterceptor {
	
	@Inject
	private UsuarioWeb usuarioweb;
	
	@Inject
	private Result result;
	
	@AroundCall
	public void around(SimpleInterceptorStack stack){
		
		System.out.println("Recurso Restrito.");
		
		if(usuarioweb.isLogado()){
			stack.next();
		}else {
			//Redirecionar para tela de login com me
			result.redirectTo(IndexController.class).index();
		}
		
	}

}
