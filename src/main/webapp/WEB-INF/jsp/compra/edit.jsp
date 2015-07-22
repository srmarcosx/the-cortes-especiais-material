<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="/the-cortes-especiais/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" typ'e="text/css"
	href="/the-cortes-especiais/css/dataTables.bootstrap.css">
<link rel="stylesheet" href="/the-cortes-especiais/css/style.css">
<link href="/the-cortes-especiais/css/datepicker.css" rel="stylesheet">

<script type="text/javascript" language="javascript"
	src="/the-cortes-especiais/js/jquery-1.11.2.min.js"></script>
<script type="text/javascript" language="javascript"
	src="/the-cortes-especiais/js/jquery.price_format.2.0.min.js"></script>
<script>
	$(document).ready(function() {
		$("#situacao").val("${compra.status}");
		$("#formaPagamento").val("${compra.formaPagamento}");
	});
</script>
<title>Editar Compra</title>

</head>
<body>
	<div id="layout">
		<div id="menu">
			<div class="navmenu navmenu-default navmenu-fixed-left">
				<a class="navmenu-brand visible-md visible-lg" id="itemMenu">Menu</a>
				<ul class="nav navmenu-nav">
					<li><a href="${linkTo[ClienteController].list}" id="itemMenu"><span
							class="glyphicon glyphicon-user" aria-hidden="true"></span>
							Clientes</a></li>
					<li><a href="${linkTo[FuncionarioController].list}"
						id="itemMenu"><span class="glyphicon glyphicon-briefcase"
							aria-hidden="true"></span> Funcionários</a></li>
					<li><a href="${linkTo[CompraController].list}" id="itemMenu"
						class="active"><span class="glyphicon glyphicon-shopping-cart"
							aria-hidden="true"></span> Compras</a></li>
					<li><a href="${linkTo[ItemEstoqueController].list}"
						id="itemMenu"><span class="glyphicon glyphicon-inbox"
							aria-hidden="true"></span> Estoque Cortes</a></li>
				</ul>
			</div>
		</div>
		<div id="content">
			<h2>Editar Compra</h2>
			<form class="form-horizontal"
				action="${linkTo[CompraController].save}" method="post">
				<input type="hidden" name="compra.idCompra"
					value="${compra.idCompra}" /> <input type="hidden"
					name="compra.cliente.idCliente" value="${compra.cliente.idCliente}" />
				<div class="form-group">
					<div class="col-md-12">
						<b> ${compra.cliente.idCliente} - ${compra.cliente.nome} </b>
					</div>
				</div>
				<div class="form-group">

					<div class="col-md-4">
						<label for="preco">Preço</label> <input class="form-control"
							id="preco" name="compra.preco" placeholder="Preço"
							value="${compra.preco}" />
					</div>
					<div class="col-md-3">
						<label for="formaPagamento">Forma de Pagamento</label> <select
							class="form-control" id="formaPagamento"
							name="compra.formaPagamento">
							<option value="Prazo">Prazo</option>
							<option value="Vista">Vista</option>
						</select>
					</div>
					<div class="col-md-2">
						<label for="quantParcelas">Quant. Parcelas</label> <input class="form-control"
							id="quantParcelas" name="compra.quantParcelas" placeholder="Quant. Parcelas" value="${compra.quantParcelas}"/>
					</div>
					<div class="col-md-3">
						<label for="situacao">Situação</label> <select
							class="form-control" id="situacao" name="compra.status">
							<option value="Não Pago">Não Pago</option>
							<option value="Pago">Pago</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<div class='col-md-6'>
						<label for="calendario">Data da Compra</label> <input type="text"
							id="calendario" class="form-control" name="compra.data"
							placeholder="Data da Compra" value="${compra.data}">
					</div>
				</div>
				<div class="form-group">
					<div class='col-md-12'>
						<label for="calendario">Informações extras</label>
						<textarea type="text" class="form-control"
							name="compra.infoExtras" placeholder="Informações extras"
							rows="4" value="${compra.infoExtras}"></textarea>
					</div>
				</div>
				<div class="form-group">
					<div class="col-md-10">
						<button type="submit" class="btn btn-default">
							<span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>
							Salvar
						</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<script type="text/javascript"
		src="/the-cortes-especiais/js/bootstrap-datepicker.js"></script>
	<script type="text/javascript"
		src="/the-cortes-especiais/js/bootstrap-datepicker.pt-BR.js"></script>
	<script type="text/javascript"
		src="/the-cortes-especiais/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" charset="utf-8">
		$(document).ready(function() {
			$('#calendario').datepicker({
				format : "dd/mm/yyyy",
				language : "pt-BR",
				autoclose : "true",
				orientation : "top auto",
				todayHighlight : "true"

			});
		});
		$('#preco').priceFormat();

	</script>
</body>
</html>