<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="/the-cortes-especiais/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="/the-cortes-especiais/css/dataTables.bootstrap.css">
<link rel="stylesheet" href="/the-cortes-especiais/css/style.css">
<script type="text/javascript" src="/the-cortes-especiais/js/cidades.js"></script>
<script type="text/javascript">
	/* M�scaras ER */
	function mascara(o, f) {
		v_obj = o
		v_fun = f
		setTimeout("execmascara()", 1)
	}
	function execmascara() {
		v_obj.value = v_fun(v_obj.value)
	}
	function mtel(v) {
		v = v.replace(/\D/g, ""); //Remove tudo o que n�o � d�gito
		v = v.replace(/^(\d{2})(\d)/g, "($1) $2"); //Coloca par�nteses em volta dos dois primeiros d�gitos
		v = v.replace(/(\d)(\d{4})$/, "$1-$2"); //Coloca h�fen entre o quarto e o quinto d�gitos
		return v;
	}
	function id(el) {
		return document.getElementById(el);
	}
	window.onload = function() {
		new dgCidades(document.getElementById('cidade'), true);

		id('telefone').onkeypress = function() {
			mascara(this, mtel);

		}
	}
</script>
<title>Cadastro de Cliente</title>
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
							aria-hidden="true"></span> Funcion�rios</a></li>
					<li><a href="${linkTo[CompraController].list}" id="itemMenu"><span
							class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>
							Compras</a></li>
					<li><a href="${linkTo[ItemEstoqueController].list}"
						id="itemMenu"><span class="glyphicon glyphicon-inbox"
							aria-hidden="true"></span> Estoque Cortes</a></li>
				</ul>
			</div>
		</div>
		<div id="content">
			<h2>Cadastro de Cliente</h2>
			<form class="form-horizontal"
				action="${linkTo[ClienteController].save}" method="post">
				<div class="form-group">
					<div class="col-md-10">
						<label for="nome">Nome</label> <input class="form-control"
							id="nome" name="cliente.nome" placeholder="Nome" />
					</div>
				</div>
				<div class="form-group">
					<div class="col-md-5">
						<label for="cpf">CPF/CNPJ</label> <input class="form-control"
							id="cpf" name="cliente.cpf" placeholder="CPF/CNPJ" />
					</div>
					<div class="col-md-5">
						<label for="telefone">Telefone</label> <input class="form-control"
							id="telefone" name="cliente.telefone" placeholder="Telefone"
							maxlength="15" />
					</div>
				</div>
				<div class="form-group">
					<div class="col-md-3">
						<label for="cidade">Cidade</label> <select class="form-control"
							id="cidade" name="cliente.cidade"></select>
					</div>
					<div class="col-md-7">
						<label for="endereco">Endere�o</label> <input class="form-control"
							id="endereco" name="cliente.endereco" placeholder="Endere�o" />
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