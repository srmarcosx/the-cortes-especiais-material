package br.com.caelum.vraptor.controller;

import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.auth_annotations.Administrador;
import br.com.caelum.vraptor.auth_annotations.Recepcionista;
import br.com.caelum.vraptor.auth_annotations.Restrito;
import br.com.caelum.vraptor.dao.EventoDAO;
import br.com.caelum.vraptor.dao.GenericDAO;
import br.com.caelum.vraptor.entidades.Evento;

@Controller
public class EventoController {
        
        @Inject
        private Result result;
        
        @Inject
        private GenericDAO<Evento> dao;
        
        public void add(){
                
        }
        
        public List<Evento> list(){
                
                return dao.find();
                
        }
        
        public void save(Evento evento){
                
                dao.save(evento);
                
                result.redirectTo(this).list();
        }
        
        public Evento edit(Integer id){
                return dao.find(id);
        }
        
        public void delete(int id){
                Evento evento = new Evento();
                evento.setId(id);
                dao.delete(evento);
                result.redirectTo(this).list();
        }
        
}