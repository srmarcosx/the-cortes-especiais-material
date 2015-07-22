<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="/the-cortes-especiais-material/mdl/material.min.css">
<link rel="stylesheet" type="text/css"
	href="/the-cortes-especiais-material/css/material-icons.css">
<link href="/the-cortes-especiais-material/css/datepicker.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="/the-cortes-especiais-material/mdl/style.css">
<script src="/the-cortes-especiais-material/mdl/material.min.js"></script>
<script type="text/javascript" language="javascript"
	src="/the-cortes-especiais-material/js/jquery-1.11.2.min.js"></script>
	<script type="text/javascript" language="javascript"
	src="/the-cortes-especiais-material/js/bootstrap-datepicker.js"></script>
<script type="text/javascript" language="javascript"
	src="/the-cortes-especiais-material/js/bootstrap-datepicker.pt-BR.js"></script>
<script type="text/javascript" language="javascript"
	src="/the-cortes-especiais-material/js/jquery.price_format.2.0.min.js"></script>

<title>Nova Compra</title>
</head>
<body>
	<div
		class="demo-layout mdl-layout mdl-js-layout mdl-layout--fixed-drawer mdl-layout--fixed-header">
		<header
			class="demo-header mdl-layout__header mdl-color--white mdl-color--grey-100 mdl-color-text--grey-600">
			<div class="mdl-layout__header-row">
				<span class="mdl-layout-title mdl-color-text--primary">Nova
					Venda</span>
				<div class="mdl-layout-spacer"></div>
			</div>
		</header>
		<div class="demo-drawer mdl-layout__drawer">
			<span class="mdl-layout-title">THE CORTES<br>ESPECIAIS
			</span>
			<nav class="demo-navigation mdl-navigation">
				<a class="mdl-navigation__link"
					href="${linkTo[ClienteController].list}"><i
					class="material-icons icon-people"></i>Clientes</a> <a
					class="mdl-navigation__link"
					href="${linkTo[FuncionarioController].list}"><i
					class="material-icons icon-work"></i>Funcionarios</a> <a
					class="mdl-navigation__link"
					href="${linkTo[CompraController].list}"><i
					class="material-icons icon-shopping-cart"></i>Vendas</a> <a
					class="mdl-navigation__link"
					href="${linkTo[ItemEstoqueController].list}"><i
					class="material-icons icon-dns"></i>Estoque</a>
			</nav>
		</div>
		<main class="mdl-layout__content mdl-color--grey-100">
		<div class="mdl-grid demo-content">
			<div
				class="demo-charts mdl-color--white mdl-shadow--2dp mdl-cell mdl-cell--11-col mdl-grid mdl-grid--no-spacing">
				<div class="content">
					<form action="${linkTo[CompraController].save}" method="post">
						<div
							class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label textfield-demo mdl-cell--12-col">
							<select class="mdl-textfield__input" id="nomeCliente"
								name="compra.cliente.idCliente">
								<c:forEach items="${clienteList}" var="cliente">
									<c:if test="${cliente.ativo}">
										<option value="${cliente.idCliente}">
											${cliente.idCliente} - ${cliente.nome}</option>
									</c:if>
								</c:forEach>
							</select><label class="mdl-textfield__label" for="nomeCliente">Cliente</label>
						</div>
						<div
							class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label textfield-demo mdl-cell--4-col">
							<input class="mdl-textfield__input" type="text" id="preco"
								name="compra.preco" placeholder="Preço"/> <label class="mdl-textfield__label"
								for="preco"></label>
						</div>
						<div
							class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label textfield-demo mdl-cell--3-col">
							<select class="mdl-textfield__input" id="formaPagamento"
								name="compra.formaPagamento">
								<option value="Prazo">Prazo</option>
								<option value="Vista">Vista</option>
							</select><label class="mdl-textfield__label" for="formaPagamento">Forma
								de Pagamento</label>
						</div>
						<div
							class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label textfield-demo mdl-cell--2-col">
							<input class="mdl-textfield__input" type="text"
								id="quantParcelas" name="compra.quantParcelas" /> <label
								class="mdl-textfield__label" for="quantParcelas">Quant.
								Parcelas</label>
						</div>
						<div
							class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label textfield-demo mdl-cell--3-col">
							<select class="mdl-textfield__input" id="situacao"
								name="compra.status">
								<option value="Não Pago">Não Pago</option>
								<option value="Pago">Pago</option>
							</select><label class="mdl-textfield__label" for="situacao">Forma
								de Pagamento</label>
						</div>
						<div
							class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label textfield-demo mdl-cell--4-col">
							<input class="mdl-textfield__input" type="text" id="calendario"
								name="compra.data" placeholder="Data da Venda"/> <label class="mdl-textfield__label"
								for="calendario"></label>
						</div>
						<div
							class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label textfield-demo mdl-cell--12-col">
							<textarea class="mdl-textfield__input" type="text" rows="4"
								id="infoExtras" name="compra.infoExtras"></textarea>
							<label class="mdl-textfield__label" for="infoExtras">Informações
								Extras</label>
						</div>
						<div class="mdl-cell--12-col">
							<button type="submit"
								class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored ">
								Salvar</button>
							<a class="mdl-button mdl-js-button mdl-button--primary"
								href="${linkTo[CompraController].list}"> Cancelar</a>
						</div>
					</form>
				</div>
			</div>
			<script type="text/javascript"
				src="/the-cortes-especiais-material/js/bootstrap-datepicker.js"></script>
			<script type="text/javascript"
				src="/the-cortes-especiais-material/js/bootstrap-datepicker.pt-BR.js"></script>
			<script type="text/javascript"
				src="/the-cortes-especiais-material/bootstrap/js/bootstrap.min.js"></script>
			<script type="text/javascript" charset="utf-8">
				$(document).ready(function() {
					$('#calendario').datepicker({
						format : "dd/mm/yyyy",
						language : "pt-BR",
						autoclose : "true",
						orientation : "top auto",
						todayHighlight : "true"

					});
					$('#preco').priceFormat();

				});
			</script>
</body>
</html>