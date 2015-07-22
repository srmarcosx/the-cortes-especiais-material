<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
	href="/the-cortes-especiais-material/mdl/material.min.css">
<script src="/the-cortes-especiais-material/mdl/material.min.js"></script>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">

<link rel="stylesheet" type="text/css"
	href="/the-cortes-especiais/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/the-cortes-especiais-material/mdl/style.css">
<script type="text/javascript" src="/the-cortes-especiais/js/estados.js"></script>


<script type="text/javascript" charset="utf-8">
	/* Máscaras ER */
	function mascara(o, f) {
		v_obj = o
		v_fun = f
		setTimeout("execmascara()", 1)
	}
	function execmascara() {
		v_obj.value = v_fun(v_obj.value)
	}
	function mtel(v) {
		v = v.replace(/\D/g, ""); //Remove tudo o que não é dígito
		v = v.replace(/^(\d{2})(\d)/g, "($1) $2"); //Coloca parênteses em volta dos dois primeiros dígitos
		v = v.replace(/(\d)(\d{4})$/, "$1-$2"); //Coloca hífen entre o quarto e o quinto dígitos
		return v;
	}
	function id(el) {
		return document.getElementById(el);
	}
	window.onload = function() {
		new dgEstados(document.getElementById('estado'), true);

		id('telefone').onkeypress = function() {
			mascara(this, mtel);

		}
	}
</script>
<title>Cadastro de Cliente</title>
</head>
<body>
	<div class="mdl-layout mdl-js-layout mdl-layout--fixed-drawer mdl-layout--fixed-header">
      <header class="demo-header mdl-layout__header">
        <div class="mdl-layout__header-row">
          <span class="mdl-layout-title">Clientes</span>
        </div>
      </header>
      <div class="demo-drawer mdl-layout__drawer">
      		<span class="mdl-layout-title">Title</span>
        <nav class="demo-navigation mdl-navigation">
          <a class="mdl-navigation__link" href="${linkTo[ClienteController].list}"><i class="material-icons">home</i>Cliente</a>
          <a class="mdl-navigation__link" href="${linkTo[FuncionarioController].list}"><i class="material-icons">inbox</i>Funcionario</a>
          <a class="mdl-navigation__link" href="${linkTo[CompraController].list}"><i class="material-icons">delete</i>Compra</a>
          <a class="mdl-navigation__link" href="${linkTo[ItemEstoqueController].list}"><i class="material-icons">report</i>ItemEstoque</a>
        </nav>
      </div>
	<main class="mdl-layout__content mdl-color--grey-100">
	<div class="mdl-grid demo-content">
		<div
			class="demo-charts mdl-color--white mdl-shadow--2dp mdl-cell mdl-cell--12-col mdl-grid">
			<div class="content">
			<h2>Cadastro de Cliente</h2>
			<form class="form-horizontal"
				action="${linkTo[ClienteController].save}" method="post">
				<div
					class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label textfield-demo">
					<input class="mdl-textfield__input" type="text" id="nome"
						name="cliente.nome" /> <label class="mdl-textfield__label"
						for="nome">Nome</label>
				</div>
				<div
					class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label textfield-demo">
					<input class="mdl-textfield__input" type="text" id="cpf"
						name="cliente.cpf" /> <label class="mdl-textfield__label"
						for="cpf">CPF/CNPJ</label>
				</div>
				<div
					class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label textfield-demo">
					<input class="mdl-textfield__input" type="text" id="telefone"
						name="cliente.telefone" maxlength="15" /> <label
						class="mdl-textfield__label" for="telefone">Telefone</label>
				</div>
				<div class="col-md-3">
					<label for="estado">Estado</label> <select class="form-control"
						id="estado" name="cliente.estado"></select>
				</div>
				<div
					class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label textfield-demo">
					<input class="mdl-textfield__input" type="text" id="cidade"
						name="cliente.cidade" /> <label class="mdl-textfield__label"
						for="nome">Cidade</label>
				</div>
				<div
					class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label textfield-demo">
					<input class="mdl-textfield__input" type="text" id="endereço"
						name="cliente.endereço" /> <label class="mdl-textfield__label"
						for="nome">Endereço</label>
				</div>
				<button type="submit"
					class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored mdl-js-ripple-effect">
					Salvar</button>
				<a class="btn btn-default" href="${linkTo[ClienteController].list}">
					Cancelar</a>
			</form>
			</div>
		</div>
	</div>
	</main>
	</div>
</body>
</html>