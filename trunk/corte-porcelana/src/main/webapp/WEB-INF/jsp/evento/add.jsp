<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Novo Evento</title>

</head>
<body>

	<form action="${linkTo[EventoController].save}" method="post"
		>
		<input name="evento.nome" placeholder="Nome do Evento"/>
		
		<input type="submit" value="Gravar Evento." />
	</form>



	<a href="${linkTo[EventoController].list}">Cancelar
		e ir para lista</a>

</body>
</html>
