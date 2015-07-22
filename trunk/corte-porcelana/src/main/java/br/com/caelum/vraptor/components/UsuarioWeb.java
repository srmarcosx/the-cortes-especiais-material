package br.com.caelum.vraptor.components;

import java.io.Serializable;

import javax.enterprise.context.SessionScoped;
import javax.inject.Named;

import br.com.caelum.vraptor.entidades.Usuario;

@SessionScoped
@Named("usuarioweb")
public class UsuarioWeb implements Serializable{
	
	private Usuario usuario;
	
	public void login(Usuario usuario){
		this.usuario = usuario;
	}
	
	public void logout(){
		this.usuario = null;
	}
	
	public String getName(){
		return usuario.getName();
	}
	
	public String getLogin(){
		return usuario.getLogin();
	}
	
	public boolean isLogado(){
		return usuario != null;
	}

}
