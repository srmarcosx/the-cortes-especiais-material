/**
 * Escrito por DGmike http://dgmike.com.br/cidades-estados-js
 */

/* Dom Ready */
window.onDomReady = function dgDomReady(fn) {
	if (document.addEventListener) // W3C
		document.addEventListener("DOMContentLoaded", fn, false);
	else
		// IE
		document.onreadystatechange = function() {
			dgReadyState(fn);
		}
}

function dgReadyState(fn) { // dom is ready for interaction (IE)
	if (document.readyState == "interactive")
		fn();
}

/* Objeto */
dgEstados = function(estado, init) {
	this.set(estado);
	if (init)
		this.start();
}

dgEstados.prototype = {
	estado : document.createElement('select'),
	set : function(estado) {
		this.estado = estado;
	},

	start : function() {
		var estado = this.estado
		while (estado.childNodes.length)
			estado.removeChild(cidade.firstChild);
		for (var i = 0; i < this.estados.length; i++)
			this.addOption(estado, this.estados[i], this.estados[i]);

	},
	addOption : function(elm, val, text) {
		var opt = document.createElement('option');
		opt.appendChild(document.createTextNode(text));
		opt.value = val;
		elm.appendChild(opt);
	},
	estados : [ [ '' ], [ 'AC' ], [ 'AL' ], [ 'AM' ], [ 'AP' ], [ 'BA' ],
			[ 'CE' ], [ 'DF' ], [ 'ES' ], [ 'GO' ], [ 'MA' ], [ 'MG' ],
			[ 'MS' ], [ 'MT' ], [ 'PA' ], [ 'PB' ], [ 'PE' ], [ 'PI' ],
			[ 'PR' ], [ 'RJ' ], [ 'RN' ], [ 'RO' ], [ 'RR' ], [ 'RS' ],
			[ 'SC' ], [ 'SE' ], [ 'SP' ], [ 'TO' ] ]
};