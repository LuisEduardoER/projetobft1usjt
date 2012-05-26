function pageIndexPt()
{
	this.selecaoIdioma = "Selecao de Idiomas";
	this.selecionaIdioma = "Selecione o Idioma";
	this.btnPortugues = "Portugues";
	this.btnIngles = "Ingles";
	this.btnEspanhol = "Espanhol";
	this.Enviar = "Enviar";
	this.Cancelar = "Cancelar";
}

function pageIndexChangePt() 
{
    ko.applyBindings(new pageIndexPt());
}

function pageLoginPt()
{
	this.login = "Entrar";
	this.usuario = "Usuario";
	this.senha = "Senha";
	this.agencia = "Agencia";
	this.Enviar = "Enviar";
	this.Limpar = "Limpar";
	this.Cancelar = "Cancelar";
	this.message1 = "Login Efetuado com sucesso!!";
	this.message2 = "Login/Senha Incorretos!!";
}

function pageLoginChangePt() 
{
    ko.applyBindings(new pageLoginPt());
}