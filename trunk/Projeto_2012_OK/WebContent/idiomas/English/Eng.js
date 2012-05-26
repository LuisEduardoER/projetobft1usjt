function pageIndexEng()
{
	this.selecaoIdioma = "Select of Languages";
	this.selecionaIdioma = "Select Language";
	this.btnPortugues = "Portuguese";
	this.btnIngles = "English";
	this.btnEspanhol = "Spanish";
	this.Enviar = "Send";
	this.Cancelar = "Cancel";
}

function pageIndexChangeEn() 
{
    ko.applyBindings(new pageIndexEng());
}

function pageLoginPt()
{
	this.login = "Login";
	this.usuario = "User";
	this.senha = "Password";
	this.agencia = "Agency";
	this.Enviar = "Send";
	this.Limpar = "Clean";
	this.Cancelar = "Cancel";
}

function pageLoginChangePt() 
{
    ko.applyBindings(new pageLoginPt());
}