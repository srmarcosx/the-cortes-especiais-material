<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="/the-cortes-especiais/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="/the-cortes-especiais/css/dataTables.bootstrap.css">
<link rel="stylesheet" href="/the-cortes-especiais/css/style.css">
<script type="text/javascript"
	src="/the-cortes-especiais/js/cidades.js"></script>
	<script type="text/javascript" language="javascript"
	src="/the-cortes-especiais/js/jquery-1.11.2.min.js"></script>
<script type="text/javascript">
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

		id('telefone').onkeypress = function() {
			mascara(this, mtel);

		}
	}
	$(document).ready(function() {
		new dgCidades(document.getElementById('cidade'), true);
		$("#cidade").val("${cliente.cidade}");
	});
</script>

<title>Editar Cliente</title>

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
					<li><a href="${linkTo[ItemEstoqueController].list}" id="itemMenu"><span
							class="glyphicon glyphicon-inbox" aria-hidden="true"></span>
							Estoque Cortes</a></li>
				</ul>
			</div>
		</div>
		<div id="content">
			<h2>Editar Cliente </h2>
			<form class="form-horizontal"
				action="${linkTo[ClienteController].save}" method="post">
				<div class="col-md-10">
					<input type="hidden" name="cliente.idCliente"
						value="${cliente.idCliente}" />
				</div>
				<div class="form-group">
					<div class="col-md-10">
						<label for="nome">Nome</label> <input class="form-control" id="nome"
							type="text" name="cliente.nome" placeholder="Nome"
							value="${cliente.nome}" />
					</div>
				</div>
				<div class="form-group">
					<div class="col-md-5">
					<label for="cpf">CPF/CNPJ</label> 
						<input class="form-control" id="cpf" type="text" name="cliente.cpf"
							placeholder="CPF/CNPJ" value="${cliente.cpf}" />
					</div>
					<div class="col-md-5">
					<label for="telefone">Telefone</label> 
						<input class="form-control" id="telefone" type="text" name="cliente.telefone"
							placeholder="Telefone" value="${cliente.telefone}" />
					</div>
				</div>
				<div class="form-group">
					<div class="col-md-3">
						<label for="cidade">Cidade</label> <select class="form-control" id="cidade" name="cliente.cidade"></select>
					</div>
					<div class="col-md-7">
					<label for="endereco">Endereço</label> 
						<input class="form-control" id="endereco" type="text" name="cliente.endereco"
							placeholder="Endereço" value="${cliente.endereco}" />
					</div>
				</div>
				<div class="form-group">
					<div class="col-md-10">
						<button type="submit" class="btn btn-default">
							<span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>
							Salvar
						</button>
						<a class="btn btn-default"
							href="${linkTo[ClienteController].list}"><span
							class="glyphicon glyphicon-remove" aria-hidden="true"></span>
							Cancelar</a>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>