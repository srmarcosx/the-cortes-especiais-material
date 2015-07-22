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
dgCidades = function(cidade, init) {
	this.set(cidade);
	if (init)
		this.start();
}

dgCidades.prototype = {
	cidade : document.createElement('select'),
	set : function(cidade) {
		this.cidade = cidade;
	},

	start : function() {
		var cidade = this.cidade
		while (cidade.childNodes.length)
			cidade.removeChild(cidade.firstChild);
		for (var i = 0; i < this.cidades.length; i++)
			this.addOption(cidade, this.cidades[i], this.cidades[i]);

	},
	addOption : function(elm, val, text) {
		var opt = document.createElement('option');
		opt.appendChild(document.createTextNode(text));
		opt.value = val;
		elm.appendChild(opt);
	},
	cidades : [ [ 'Cidade' ], [ 'Teresina' ], [ 'Acauã' ], [ 'Agricolândia' ],
			[ 'Água Branca' ], [ 'Alagoinha do Piauí' ],
			[ 'Alegrete do Piauí' ], [ 'Alto Longá' ], [ 'Altos' ],
			[ 'Alvorada do Gurguéia' ], [ 'Amarante' ], [ 'Angical do Piauí' ],
			[ 'Anísio de Abreu' ], [ 'Antônio Almeida' ], [ 'Aroazes' ],
			[ 'Arraial' ], [ 'Assunção do Piauí' ], [ 'Avelino Lopes' ],
			[ 'Baixa Grande do Ribeiro' ], [ 'Barra d\'Alcântara' ],
			[ 'Barras' ], [ 'Barreiras do Piauí' ], [ 'Barro Duro' ],
			[ 'Batalha' ], [ 'Bela Vista do Piauí' ], [ 'Belém do Piauí' ],
			[ 'Beneditinos' ], [ 'Bertolínia' ], [ 'Betânia do Piauí' ],
			[ 'Boa Hora' ], [ 'Bocaina' ], [ 'Bom Jesus' ],
			[ 'Bom Princípio do Piauí' ], [ 'Bonfim do Piauí' ],
			[ 'Boqueirão do Piauí' ], [ 'Brasileira' ], [ 'Brejo do Piauí' ],
			[ 'Buriti dos Lopes' ], [ 'Buriti dos Montes' ],
			[ 'Cabeceiras do Piauí' ], [ 'Cajazeiras do Piauí' ],
			[ 'Cajueiro da Praia' ], [ 'Caldeirão Grande do Piauí' ],
			[ 'Campinas do Piauí' ], [ 'Campo Alegre do Fidalgo' ],
			[ 'Campo Grande do Piauí' ], [ 'Campo Largo do Piauí' ],
			[ 'Campo Maior' ], [ 'Canavieira' ], [ 'Canto do Buriti' ],
			[ 'Capitão de Campos' ], [ 'Capitão Gervásio Oliveira' ],
			[ 'Caracol' ], [ 'Caraúbas do Piauí' ], [ 'Caridade do Piauí' ],
			[ 'Castelo do Piauí' ], [ 'Caxingó' ], [ 'Cocal' ],
			[ 'Cocal de Telha' ], [ 'Cocal dos Alves' ], [ 'Coivaras' ],
			[ 'Colônia do Gurguéia' ], [ 'Colônia do Piauí' ],
			[ 'Conceição do Canindé' ], [ 'Coronel José Dias' ],
			[ 'Corrente' ], [ 'Cristalândia do Piauí' ], [ 'Cristino Castro' ],
			[ 'Curimatá' ], [ 'Currais' ], [ 'Curral Novo do Piauí' ],
			[ 'Curralinhos' ], [ 'Demerval Lobão' ], [ 'Dirceu Arcoverde' ],
			[ 'Dom Expedito Lopes' ], [ 'Dom Inocêncio' ],
			[ 'Domingos Mourão' ], [ 'Elesbão Veloso' ], [ 'Eliseu Martins' ],
			[ 'Esperantina' ], [ 'Fartura do Piauí' ], [ 'Flores do Piauí' ],
			[ 'Floresta do Piauí' ], [ 'Floriano' ], [ 'Francinópolis' ],
			[ 'Francisco Ayres' ], [ 'Francisco Macedo' ],
			[ 'Francisco Santos' ], [ 'Fronteiras' ], [ 'Geminiano' ],
			[ 'Gilbués' ], [ 'Guadalupe' ], [ 'Guaribas' ],
			[ 'Hugo Napoleão' ], [ 'Ilha Grande' ], [ 'Inhuma' ],
			[ 'Ipiranga do Piauí' ], [ 'Isaías Coelho' ], [ 'Itainópolis' ],
			[ 'Itaueira' ], [ 'Jacobina do Piauí' ], [ 'Jaicós' ],
			[ 'Jardim do Mulato' ], [ 'Jatobá do Piauí' ], [ 'Jerumenha' ],
			[ 'João Costa' ], [ 'Joaquim Pires' ], [ 'Joca Marques' ],
			[ 'José de Freitas' ], [ 'Juazeiro do Piauí' ], [ 'Júlio Borges' ],
			[ 'Jurema' ], [ 'Lagoa Alegre' ], [ 'Lagoa de São Francisco' ],
			[ 'Lagoa do Barro do Piauí' ], [ 'Lagoa do Piauí' ],
			[ 'Lagoa do Sítio' ], [ 'Lagoinha do Piauí' ], [ 'Landri Sales' ],
			[ 'Luís Correia' ], [ 'Luzilândia' ], [ 'Madeiro' ],
			[ 'Manoel Emídio' ], [ 'Marcolândia' ], [ 'Marcos Parente' ],
			[ 'Massapê do Piauí' ], [ 'Matias Olímpio' ], [ 'Miguel Alves' ],
			[ 'Miguel Leão' ], [ 'Milton Brandão' ], [ 'Monsenhor Gil' ],
			[ 'Monsenhor Hipólito' ], [ 'Monte Alegre do Piauí' ],
			[ 'Morro Cabeça no Tempo' ], [ 'Morro do Chapéu do Piauí' ],
			[ 'Murici dos Portelas' ], [ 'Nazaré do Piauí' ],
			[ 'Nossa Senhora de Nazaré' ], [ 'Nossa Senhora dos Remédios' ],
			[ 'Nova Santa Rita' ], [ 'Novo Oriente do Piauí' ],
			[ 'Novo Santo Antônio' ], [ 'Oeiras' ],
			[ 'Olho d\'Água do Piauí' ], [ 'Padre Marcos' ], [ 'Paes Landim' ],
			[ 'Pajeú do Piauí' ], [ 'Palmeira do Piauí' ], [ 'Palmeirais' ],
			[ 'Paquetá' ], [ 'Parnaguá' ], [ 'Parnaíba' ],
			[ 'Passagem Franca do Piauí' ], [ 'Patos do Piauí' ],
			[ 'Pau d\'Arco do Piauí' ], [ 'Paulistana' ], [ 'Pavussu' ],
			[ 'Pedro II' ], [ 'Pedro Laurentino' ], [ 'Picos' ],
			[ 'Pimenteiras' ], [ 'Pio IX' ], [ 'Piracuruca' ], [ 'Piripiri' ],
			[ 'Porto' ], [ 'Porto Alegre do Piauí' ], [ 'Prata do Piauí' ],
			[ 'Queimada Nova' ], [ 'Redenção do Gurguéia' ], [ 'Regeneração' ],
			[ 'Riacho Frio' ], [ 'Ribeira do Piauí' ], [ 'Ribeiro Gonçalves' ],
			[ 'Rio Grande do Piauí' ], [ 'Santa Cruz do Piauí' ],
			[ 'Santa Cruz dos Milagres' ], [ 'Santa Filomena' ],
			[ 'Santa Luz' ], [ 'Santa Rosa do Piauí' ], [ 'Santana do Piauí' ],
			[ 'Santo Antônio de Lisboa' ], [ 'Santo Antônio dos Milagres' ],
			[ 'Santo Inácio do Piauí' ], [ 'São Braz do Piauí' ],
			[ 'São Félix do Piauí' ], [ 'São Francisco de Assis do Piauí' ],
			[ 'São Francisco do Piauí' ], [ 'São Gonçalo do Gurguéia' ],
			[ 'São Gonçalo do Piauí' ], [ 'São João da Canabrava' ],
			[ 'São João da Fronteira' ], [ 'São João da Serra' ],
			[ 'São João da Varjota' ], [ 'São João do Arraial' ],
			[ 'São João do Piauí' ], [ 'São José do Divino' ],
			[ 'São José do Peixe' ], [ 'São José do Piauí' ], [ 'São Julião' ],
			[ 'São Lourenço do Piauí' ], [ 'São Luis do Piauí' ],
			[ 'São Miguel da Baixa Grande' ], [ 'São Miguel do Fidalgo' ],
			[ 'São Miguel do Tapuio' ], [ 'São Pedro do Piauí' ],
			[ 'São Raimundo Nonato' ], [ 'Sebastião Barros' ],
			[ 'Sebastião Leal' ], [ 'Sigefredo Pacheco' ], [ 'Simões' ],
			[ 'Simplício Mendes' ], [ 'Socorro do Piauí' ], [ 'Sussuapara' ],
			[ 'Tamboril do Piauí' ], [ 'Tanque do Piauí' ],
			[ 'União' ], [ 'Uruçuí' ], [ 'Valença do Piauí' ],
			[ 'Várzea Branca' ], [ 'Várzea Grande' ], [ 'Vera Mendes' ],
			[ 'Vila Nova do Piauí' ], [ 'Wall Ferraz' ] ]
};