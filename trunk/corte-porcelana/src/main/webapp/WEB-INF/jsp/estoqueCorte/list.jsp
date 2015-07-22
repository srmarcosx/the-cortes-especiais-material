<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">

<title>Estoque para Cortes</title>

<link rel="stylesheet" type="text/css"
	href="/the-cortes-especiais/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="/the-cortes-especiais/css/dataTables.bootstrap.css">
<link rel="stylesheet" href="/the-cortes-especiais/css/style.css">

<script type="text/javascript" language="javascript"
	src="/the-cortes-especiais/js/jquery-1.11.2.min.js"></script>
<script type="text/javascript" language="javascript"
	src="/the-cortes-especiais/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" language="javascript"
	src="/the-cortes-especiais/js/dataTables.bootstrap.js"></script>
<script type="text/javascript" charset="utf-8">
	$(document).ready(function() {
		$('#myTable').dataTable();
	});
</script>
<style type="text/css"></style>
</head>
<body>
	<div id="layout">
		<div id="menu">
			<div class="navmenu navmenu-default navmenu-fixed-left">
				<a class="navmenu-brand visible-md visible-lg" id="itemMenu">Menu</a>
				<ul class="nav navmenu-nav">
					<li><a href="${linkTo[ClienteController].list}" id="itemMenu"
						class="active"><span class="glyphicon glyphicon-user"
							aria-hidden="true"></span> Clientes</a></li>
					<li><a href="${linkTo[FuncionarioController].list}"
						id="itemMenu"><span class="glyphicon glyphicon-briefcase"
							aria-hidden="true"></span> Funcionários</a></li>
					<li><a href="${linkTo[CompraController].list}" id="itemMenu"><span
							class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>
							Compras</a></li>
					<li><a href="${linkTo[EstoqueCorteController].list}" id="itemMenu"><span
							class="glyphicon glyphicon-inbox" aria-hidden="true"></span>
							Estoque Cortes</a></li>
				</ul>
			</div>
		</div>
		<div id="content">
			<h2>Estoque para Cortes</h2>
			<table class="table table-striped" id="myTable">
				<thead>
					<tr>
						<th>#</th>
						<th>IdProduto</th>
						<th>Produto</th>
						<th>Quantidade</th>
						<th>Id Compra</th>
						<th>Id Cliente</th>
						<th>Nome Cliente</th>
						<th></th>
					</tr>
				</thead>

				<tbody>
					<c:forEach items="${itemEstoqueList}" var="itemEstoque">
						<tr>
							<td>${itemEstoque.idItem}</td>
							<td>${itemEstoque.produto.idProduto}</td>
							<td>${itemEstoque.produto.nome}</td>
							<td>${itemEstoque.quantidade}</td>
							<td>${itemEstoque.compra.idCompra}</td>
							<td>${itemEstoque.compra.cliente.idCliente}</td>
							<td>${itemEstoque.compra.cliente.nome}</td>
							<td><a
								href="${linkTo[ItemEstoqueController].delete}?idItem=${itemEstoque.idItem}" 
								onclick="return confirm('Você tem certeza que deseja excluir?');"><span
									class="glyphicon glyphicon-remove" aria-hidden="true"></span> </a><a
								href="${linkTo[ItemEstoqueController].edit}?idItem=${itemEstoque.idItem}"><span
									class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<p>
			<div class="col-md-10">
				<a class="btn btn-default" href="${linkTo[ItemEstoqueController].add}"><span
					class="glyphicon glyphicon-plus" aria-hidden="true"></span> Novo
					Item</a>
				<a class="btn btn-default" href="${linkTo[ProdutoController].add}"><span
					class="glyphicon glyphicon-plus" aria-hidden="true"></span> Novo
					Produto</a>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		// For demo to fit into DataTables site builder...
		$('#myTable').removeClass('display').addClass(
				'table table-striped');
	</script>
</body>
</html>