<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="/the-cortes-especiais-material/mdl/material.min.css">
<link rel="stylesheet" type="text/css"
	href="/the-cortes-especiais-material/css/material-icons.css">
<link rel="stylesheet"
	href="/the-cortes-especiais-material/mdl/style.css">
<script src="/the-cortes-especiais-material/mdl/material.min.js"></script>
<style type="text/css">
i{
font-size: 200px;
text-align: center;
}
.title{
font-size: 28px;
text-align: center;

}
.material-icons{
text-align: center;
left: 50%;
}
</style>
<title>Home</title>
</head>
<body>
	<div
		class="demo-layout mdl-layout mdl-js-layout mdl-layout--fixed-drawer mdl-layout--fixed-header">
		<header
			class="demo-header mdl-layout__header mdl-color--white mdl-color--grey-100 mdl-color-text--grey-600">
			<div class="mdl-layout__header-row">
				<span class="mdl-layout-title mdl-color-text--primary">Home</span>
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
				class="demo-charts mdl-color--white mdl-shadow--2dp mdl-cell mdl-cell--5-col">
				<div class="content">
					<i class="material-icons icon-people"></i>
					<div class="title">Clientes</div>
				</div>
			</div>
			<div
				class="demo-charts mdl-cell mdl-cell--2-col">
			</div>
			<div
				class="demo-charts mdl-color--white mdl-shadow--2dp mdl-cell mdl-cell--5-col">
				<div class="content"></div>
			</div>
			<div
				class="demo-charts mdl-color--white mdl-shadow--2dp mdl-cell mdl-cell--6-col">
				<div class="content"></div>
			</div>
			<div
				class="demo-charts mdl-color--white mdl-shadow--2dp mdl-cell mdl-cell--6-col">
				<div class="content"></div>
			</div>
		</div>
		</main>
</body>
</html>