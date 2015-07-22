<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" type="text/css" href="/vraptor-blank-project/estilo.css">
	<title>Lista de Eventos</title>
</head>
<body>


	<ul>
	<c:forEach items="${eventoList}" var="evento">
		<li>${evento.id} - ${evento.nome} - <a href="${linkTo[EventoController].delete}?id=${evento.id}">Remover</a> - <a href="${linkTo[EventoController].edit}?id=${evento.id}">Editar</a> </li>
		
	</c:forEach>
	</ul>
	
		<ul>
				<c:forEach items="${clienteList}" var="cliente">
					<li>${cliente.idCliente} - ${cliente.nome} - <a href="${linkTo[ClienteController].delete}?idCliente=${cliente.idCliente}">Remover</a> - <a href="${linkTo[ClienteController].edit}?idCliente=${cliente.idCliente}">Editar</a> </li>
					
				</c:forEach>
				</ul>
	
	<a href="${linkTo[EventoController].add}">Adicionar Novo Evento</a>
	
</body>
</html>