package br.com.caelum.vraptor.entidades;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Compra {

	@Id
	@GeneratedValue
	private int idCompra;
	private String preco;
	private String status;
	private String data;
	private String formaPagamento;
	private int quantParcelas;
	private String infoExtras;

	@ManyToOne
	private Cliente cliente;

	public Compra() {

	}

	public String getInfoExtras() {
		return infoExtras;
	}

	public void setInfoExtras(String infoExtras) {
		this.infoExtras = infoExtras;
	}

	public int getIdCompra() {
		return idCompra;
	}

	public void setIdCompra(int idCompra) {
		this.idCompra = idCompra;
	}

	public String getPreco() {
		return preco;
	}

	public void setPreco(String preco) {
		this.preco = preco;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public String getFormaPagamento() {
		return formaPagamento;
	}

	public void setFormaPagamento(String formaPagamento) {
		this.formaPagamento = formaPagamento;
	}

	public int getQuantParcelas() {
		return quantParcelas;
	}

	public void setQuantParcelas(int quantParcelas) {
		this.quantParcelas = quantParcelas;
	}

	public Cliente getCliente() {
		return cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}
}
