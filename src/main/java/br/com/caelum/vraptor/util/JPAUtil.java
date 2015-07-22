package br.com.caelum.vraptor.util;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

public class JPAUtil {
	private static final EntityManagerFactory emf = Persistence
			.createEntityManagerFactory("jpa-hibernate-mysql-dev-local");

	private static ThreadLocal<EntityManager> ems = new ThreadLocal<EntityManager>();

	/**
	 * Obtém o EntityManager vinculado à Thread atual. Se ele ainda não existir,
	 * é criado e depois, vinculado à Thread atual.
	 */
	public static EntityManager getEntityManager() {
		EntityManager em = ems.get();
		if (em == null) {
			em = emf.createEntityManager();
			ems.set(em);
		}
		return em;
	}

	/**
	 * Fecha o EntityManager atrelado à Thread atual e retira-o da ThreadLocal.
	 */
	public static void closeEntityManager() {
		EntityManager em = ems.get();
		if (em != null) {
			EntityTransaction tx = em.getTransaction();
			if (tx.isActive()) {
				tx.commit();
			}
			em.close();
			ems.set(null);
		}
	}

	public static void beginTransaction() {
		getEntityManager().getTransaction().begin();
	}

	public static void commit() {
		EntityTransaction tx = getEntityManager().getTransaction();
		if (tx.isActive()) {
			tx.commit();
		}
	}

	public static void rollback() {
		EntityTransaction tx = getEntityManager().getTransaction();
		if (tx.isActive()) {
			tx.rollback();
		}
	}
}