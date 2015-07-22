<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="/vraptor-blank-project/pure-release-0.5.0/pure.css">
<script type="text/javascript" src="/vraptor-blank-project/jquery-1.11.2.min.js"></script>
<script type="text/javascript">

function getData(){
	var sufix = $('[name=idCliente]').val()
    $.ajax({
        url: '/vraptor-blank-project/cliente/search_list?idCliente='+sufix,
       success: function(data) {
            $('#content').html(data);
       }
    });
}
</script>
<title>Buscar por uma carteira</title>
</head>
<body>
<h2>Digite o numero de controle do formulario: </h2>
<input name="idCliente" placeholder="Numero de Controle" />
<input type="submit" onclick="getData()" value="Buscar" class="pure-button pure-button-primary" />
<div id="content"></div>
</body>
</html>