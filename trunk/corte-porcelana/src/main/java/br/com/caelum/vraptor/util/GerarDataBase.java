package br.com.caelum.vraptor.util;
import java.util.Properties;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;


public class GerarDataBase {

	public static void main(String[] args) {
		Properties prop = new Properties();
		prop.put("hibernate.hbm2ddl.auto", "update");
		
		try {
			
			EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa-hibernate-mysql-dev-local", prop);
			
			EntityManager em = emf.createEntityManager();
			
			em.close();
			emf.close();
			
			System.out.println("Banco de Dados Atualizado...");
			
		} catch (Exception e) {
			
			e.printStackTrace();
			System.out.println("Erro ao atualizar banco de dados..");
			
		}
		

	}

}