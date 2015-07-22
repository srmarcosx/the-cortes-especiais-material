package br.com.caelum.vraptor.util;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import br.com.caelum.vraptor.AroundCall;
import br.com.caelum.vraptor.Intercepts;
import br.com.caelum.vraptor.components.UsuarioWeb;
import br.com.caelum.vraptor.interceptor.SimpleInterceptorStack;

@Intercepts
@RequestScoped
public class DefaultInterceptor {

    @Inject
    private HttpServletRequest request;
    
    @Inject
    private UsuarioWeb usuarioWeb;

    @AroundCall
    public void intercept(SimpleInterceptorStack stack) {
        System.out.println("Interceptando " + request.getRequestURI());
        // código a ser executado antes da lógica
        
        if (usuarioWeb.isLogado()){
        	System.out.println("Logado: "+usuarioWeb.getName());
        }else {
			System.out.println("Não Autenticado..");
		}
        
        stack.next(); // continua a execução
    }
}
