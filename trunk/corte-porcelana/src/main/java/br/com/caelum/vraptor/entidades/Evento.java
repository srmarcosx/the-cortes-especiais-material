package br.com.caelum.vraptor.entidades;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Evento {
        
        @Id
        @GeneratedValue
        private int id;
        
        
        private String nome;
        
        public Evento() {
                // TODO Auto-generated constructor stub
        }

        public int getId() {
                return id;
        }

        public void setId(int id) {
                this.id = id;
        }

        public String getNome() {
                return nome;
        }

        public void setNome(String nome) {
                this.nome = nome;
        }
        
        

}