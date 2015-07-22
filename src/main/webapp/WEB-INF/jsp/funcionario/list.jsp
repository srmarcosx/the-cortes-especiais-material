<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="/the-cortes-especiais-material/mdl/material.min.css">
<link rel="stylesheet" type="text/css"
	href="/the-cortes-especiais-material/css/material-icons.css">
<link rel="stylesheet" type="text/css"
	href="/the-cortes-especiais-material/css/footable.core.min.css">
<link rel="stylesheet" type="text/css"
	href="/the-cortes-especiais-material/css/footable.standalone.css">
<link rel="stylesheet"
	href="/the-cortes-especiais-material/mdl/style.css">
<link rel="stylesheet"
	href="/the-cortes-especiais-material/css/style_table.css">
<script src="/the-cortes-especiais-material/mdl/material.min.js"></script>
<script type="text/javascript"
	src="/the-cortes-especiais-material/js/jquery-1.11.2.min.js"></script>
<script type="text/javascript"
	src="/the-cortes-especiais-material/js/footable.js"></script>
<script type="text/javascript"
	src="/the-cortes-especiais-material/js/footable.sort.js"></script>
<script type="text/javascript"
	src="/the-cortes-especiais-material/js/footable.filter.js"></script>
<script type="text/javascript"
	src="/the-cortes-especiais-material/js/footable.paginate.js"></script>
<script type="text/javascript">
	$(function() {

		$('.footable').footable();

	});
</script>
<title>Vendas</title>
</head>
<body>
	<div
		class="demo-layout mdl-layout mdl-js-layout mdl-layout--fixed-drawer mdl-layout--fixed-header">
		<header
			class="demo-header mdl-layout__header mdl-color--white mdl-color--grey-100 mdl-color-text--grey-600">
			<div class="mdl-layout__header-row">
				<span class="mdl-layout-title mdl-color-text--primary">Vendas</span>
				<div class="mdl-layout-spacer"></div>
				<div
					class="mdl-textfield mdl-js-textfield mdl-textfield--expandable">
					<label class="mdl-button mdl-js-button mdl-button--icon"
						for="filter"> <i class="material-icons icon-search"></i>
					</label>
					<div class="mdl-textfield__expandable-holder">
						<input class="mdl-textfield__input" type="text" id="filter" /> <label
							class="mdl-textfield__label" for="filter">Enter your
							query...</label>
					</div>
				</div>
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
				class="demo-charts mdl-color--white mdl-shadow--2dp mdl-cell mdl-cell--11-col mdl-grid">
				<span class="row-count"></span>
				<table class="mdl-data-table mdl-js-data-table footable "
					data-filter="#filter" data-page-size="10">
					<thead>
						<tr>
							<th class="toggle-icon" data-toggle="true"></th>
							<th>ID</th>
							<th>Nome</th>
							<th class="numeric">CPF/CNPJ</th>
							<th class="numeric">Telefone</th>
							<th>Endereco</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${funcionarioList}" var="funcionario">
							<tr>
								<td class="toggle-icon"></td>
								<td>${funcionario.idFuncionario}</td>
								<td>${funcionario.nome}</td>
								<td class="numeric">${funcionario.cpf}</td>
								<td class="numeric">${funcionario.telefone}</td>
								<td>${funcionario.endereco}</td>
								<td class="numeric"><a
									class="mdl-button mdl-button--icon mdl-button--colored table-button"
									href="${linkTo[FuncionarioController].delete}?idFuncionario=${funcionario.idFuncionario}"
									onclick="return confirm('Você tem certeza que deseja excluir?');"><i
										class="material-icons icon-delete"></i></a><a
									class="mdl-button mdl-button--icon mdl-button--colored table-button"
									href="${linkTo[FuncionarioController].edit}?idFuncionario=${funcionario.idFuncionario}"><i
										class="material-icons icon-create"></i></a></td>
							</tr>
						</c:forEach>
					</tbody>
					<tfoot>
						<tr>
							<td colspan="10">
								<div class="pagination pagination-right"></div>
							</td>
						</tr>
					</tfoot>
				</table>
			</div>
			<a
				class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored"
				id="float-button" href="${linkTo[FuncionarioController].add}"><i
				class="material-icons icon-add"></i> </a>
		</div>
		</main>
		</div>
		
</body>
</html>