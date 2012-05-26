function pageIndexEs()
{
	this.selecaoIdioma = "Seleccao del Idiomas";
	this.selecionaIdioma = "Seleccionar el Idioma";
	this.btnPortugues = "Portugues";
	this.btnIngles = "Ingles";
	this.btnEspanhol = "Espanol";
	this.Enviar = "Enviar";
	this.Cancelar = "Cancelar";
}

function pageIndexChangeEs() 
{
    ko.applyBindings(new pageIndexEs());
}

function pageLoginPt()
{
	this.login = "Sesion";
	this.usuario = "Usuario";
	this.senha = "Contrasena";
	this.agencia = "Agencia";
	this.Enviar = "Enviar";
	this.Limpar = "Limpiar";
	this.Cancelar = "Cancelar";
}

function pageLoginChangePt() 
{
    ko.applyBindings(new pageLoginPt());
}