<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" type="text/css"
	href="/the-cortes-especiais/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/the-cortes-especiais/css/style.css">
<link href="/the-cortes-especiais/css/datepicker.css" rel="stylesheet">
	<script type="text/javascript" language="javascript"
	src="/the-cortes-especiais/js/jquery-1.11.2.min.js"></script>

<title>Nova Compra</title>
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
			<h2>Nova Compra</h2>
			<form class="form-horizontal"
				action="${linkTo[CompraController].save}" method="post">
				<div class="form-group">
					<div class="col-md-10">
						<label for="nomeCliente">Cliente</label> <select
							class="form-control" id="nomeCliente"
							name="compra.cliente.idCliente">
							<c:forEach items="${clienteList}" var="cliente">
							<c:if test="${cliente.ativo}">
								<option value="${cliente.idCliente}">
									${cliente.idCliente} - ${cliente.nome}</option>
									</c:if>
							</c:forEach>
						</select>
					</div>
				</div>
				<div class="form-group">

					<div class="col-md-4">
						<label for="preco">Preço</label> <input class="form-control"
							id="preco" name="compra.preco" placeholder="Preço"/>
					</div>
					<div class="col-md-3">
						<label for="formaPagamento">Forma de Pagamento</label> <select
							class="form-control" id="formaPagamento"
							name="compra.formaPagamento">
							<option value="Prazo">Prazo</option>
							<option value="Vista">Vista</option>
						</select>
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
            		<label for="calendario">Data da Compra</label>
               <input type="text" id="calendario" class="form-control" name="compra.data" placeholder="Data da Compra">
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
	<script type="text/javascript" src="/the-cortes-especiais/js/bootstrap-datepicker.js"></script>
	<script type="text/javascript" src="/the-cortes-especiais/js/bootstrap-datepicker.pt-BR.js"></script>
	<script type="text/javascript" src="/the-cortes-especiais/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" charset="utf-8">
      $(document).ready(function () {
        $('#calendario').datepicker({
            format: "dd/mm/yyyy",
            language: "pt-BR",
           	autoclose: "true",
            orientation: "top auto",
           	todayHighlight : "true"

        });
      });
    </script>
</body>
</html>