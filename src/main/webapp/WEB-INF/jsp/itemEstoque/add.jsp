<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" type="text/css"
	href="/the-cortes-especiais/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="/the-cortes-especiais/css/dataTables.bootstrap.css">
<link rel="stylesheet" href="/the-cortes-especiais/css/style.css">
<script type="text/javascript" language="javascript"
	src="/the-cortes-especiais/js/jquery-1.11.2.min.js"></script>
<script type="text/javascript" language="javascript"
	src="/the-cortes-especiais/js/jquery.price_format.2.0.min.js"></script>
<title>Novo Item de Estoque</title>
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
						id="itemMenu" class="active"><span
							class="glyphicon glyphicon-briefcase" aria-hidden="true"></span>
							Funcionários</a></li>
					<li><a href="${linkTo[CompraController].list}" id="itemMenu"><span
							class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>
							Compras</a></li>
					<li><a href="${linkTo[ItemEstoqueController].list}" id="itemMenu"><span
							class="glyphicon glyphicon-inbox" aria-hidden="true"></span>
							Estoque Cortes</a></li>
				</ul>
			</div>
		</div>
		<div id="content">
			<h2>Novo Item de Estoque</h2>
			<form class="form-horizontal"
				action="${linkTo[ItemEstoqueController].save}" method="post">
				<div class="form-group">
					<div class="col-md-8">
						<label for="nomeProduto">Produto</label> <input
							class="form-control" id="nomeProduto"
							name="itemEstoque.nome" placeholder="Nome">
					</div>
					<div class="col-md-4">
						<label for="quantidade">Quantidade</label> <input
							class="form-control" id="quantidade"
							name="itemEstoque.quantidade" placeholder="Quantidade" />
					</div>
				</div>
				<div class="form-group">
					<div class="col-md-12">
						<button type="submit" class="btn btn-default">
							<span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>
							Salvar
						</button>
						<a class="btn btn-default"
							href="${linkTo[itemEstoqueController].list}"><span
							class="glyphicon glyphicon-remove" aria-hidden="true"></span>
							Cancelar</a>
					</div>
				</div>
			</form>
		</div>
	</div>
	<script type="text/javascript"
		src="/the-cortes-especiais/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" charset="utf-8">
	$('#quantidade').priceFormat({
	    prefix: '',
	    centsSeparator: ',',
	    thousandsSeparator: '.'
	});
	</script>
</body>
</html>