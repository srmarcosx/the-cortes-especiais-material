package br.com.caelum.vraptor.util;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

@WebFilter("/*")
public class EntityManagerFilter implements Filter {
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		try {
			JPAUtil.beginTransaction();
			chain.doFilter(request, response);
			JPAUtil.commit();
		} catch (Throwable e) {
			System.out.println(e.getMessage() + "\n" + e.getCause());
			e.printStackTrace();
			JPAUtil.rollback();
			throw new ServletException(e);
		} finally {
			JPAUtil.closeEntityManager();
		}
	}

	public void destroy() {
	}

	public void init(FilterConfig arg0) throws ServletException {
	}
}
