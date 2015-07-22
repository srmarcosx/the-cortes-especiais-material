<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8">
	
	<title>Funcionários</title>

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
		} );
	</script>
	<style type="text/css"></style></head>
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
			<h2>Funcionários</h2>
			<table class="table table-striped" id="myTable">
				<thead>
					<tr>
						<th>#</th>
						<th>Nome</th>
						<th>CPF/CNPJ</th>
						<th>Telefone</th>
						<th>Endereco</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${funcionarioList}" var="funcionario">
						<tr>
							<td>${funcionario.idFuncionario}</td>
							<td>${funcionario.nome}</td>
							<td>${funcionario.cpf}</td>
							<td>${funcionario.telefone}</td>
							<td>${funcionario.endereco}</td>
							<td><a
								href="${linkTo[FuncionarioController].delete}?idFuncionario=${funcionario.idFuncionario}" 
								onclick="return confirm('Você tem certeza que deseja excluir?');"><span
									class="glyphicon glyphicon-remove" aria-hidden="true"></span> </a><a
								href="${linkTo[FuncionarioController].edit}?idFuncionario=${funcionario.idFuncionario}"><span
									class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<p>
			<div class="col-md-10">
				<a class="btn btn-default"
					href="${linkTo[FuncionarioController].add}"><span
					class="glyphicon glyphicon-plus" aria-hidden="true"></span> Novo
					Funcionário</a>
			</div>
		</div>
	</div>
	<script type="text/javascript">
	// For demo to fit into DataTables site builder...
	$('#myTable')
		.removeClass( 'display' )
		.addClass('table table-striped');
</script>
</body>
</html>