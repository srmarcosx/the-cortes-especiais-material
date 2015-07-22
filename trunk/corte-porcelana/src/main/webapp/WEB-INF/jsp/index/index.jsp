<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="/vraptor-blank-project/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="/vraptor-blank-project/css/dataTables.bootstrap.css">
<link rel="stylesheet" href="/vraptor-blank-project/css/style.css">
<title>Menu</title>
</head>
<body>
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
</body>
</html>