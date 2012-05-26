<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
	String user = request.getParameter("user");
	String agencia = request.getParameter("agencia");
	String idi = request.getParameter("idi");
%>   
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<script src="idiomas\Portugues\Pt.js" type="text/javascript"></script>
    <script src="idiomas\English\Eng.js" type="text/javascript"></script>
    <script src="idiomas\Espanol\Es.js" type="text/javascript"></script>
    <script src="idiomas\knockout-2.0.0.js" type="text/javascript"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastrar Pessoa Física</title>

<script language="JavaScript" type="text/JavaScript">


function habilitaCampo(valor)
	{
		if (valor == "Sim")
		{
			document.getElementById('cpf').disabled = true;
			document.getElementById('rg').disabled = true;
			document.getElementById('pass').disabled = false;
        }
		else
		{
			document.getElementById('cpf').disabled = false;
			document.getElementById('rg').disabled = false;
			document.getElementById('pass').disabled = true;
        }
}


function dateMask(local,string)
	{
		if(string.length == 2 ) local.value += "/";
		if(string.length == 5 ) local.value += "/";
	}

function foneMask(local,string)
{
	if(string.length == 2 ) local.value += "-";
}

</script>

</head>
<body text="#000000" onload="<%=idi%>">

<form name="form1" id="form1" action = "Cadastra_CliF_Banco.jsp?user=<%= user%>&agencia=<%=agencia%>" method = "post">	


	<h1><P align="center"><label data-bind="text: cadastropf"></label></h1></P>
	<face="arial" size="20"><center><label data-bind="text: cadastrobasico"></label></center><P>
	<center><table border = "0">
	<tr>
		<td COLSPAN = 2 ><face="arial" size="12"><center><label data-bind="text: nome"></label></><br><INPUT TYPE="text" name="nome" maxlength="40" size="40" VALUE=""></center></td>
		<td COLSPAN = 2><face="arial" size="12"><center><label data-bind="text: telefone"></label></><br><INPUT TYPE="text" name="fone" maxlength="11" onKeyPress="foneMask(this,this.value)"></center></td>
		<td COLSPAN = 2><face="arial" size="12"><center><label data-bind="text: email"></label></><br><INPUT TYPE="text" name="email" maxlength="40" size="40" VALUE=""></center></td>
	</tr>
	<tr>
		<td class="texto" COLSPAN = 2 ><face="arial" size="12"><center>Sexo</><br>
			<input type="radio" name="sexo" value="Masculino">Masculino</>
			<input type="radio" name="sexo" value="Feminino">Feminino</>
		</td>
		<td></td>
		<td COLSPAN = 2 ><face="arial" size="12"><center>Data de Nascimento</><br>
			<INPUT TYPE="text" name="datanasc" maxlength="10" onKeyPress="dateMask(this,this.value)" VALUE=""></center>
		</td>
	</tr>
	<tr>
		<td></td>
		<td class="texto" COLSPAN = 2 ><face="arial" size="12"><br><center>Estrangeiro</><br>
			<input type="radio" name="estrangeiro" id="estraS" value="Sim" onclick="habilitaCampo(this.value)">Sim</>
			<input type="radio" name="estrangeiro" id="estraN" value="Não" onclick="habilitaCampo(this.value)">Não</>
		</td>
	</tr>
	</table>
	<br><br>
	<face="arial" size="20"><center>Documentos</center><P>
	<center></center><table border = "0">
	<tr>
		<td><face="arial" size="12"><center>CPF</><br><INPUT class="campo" TYPE="text" name="cpf" id="cpf" maxlength="16" disabled></center></td>
		<td><face="arial" size="12"><center>Passaporte</><br><INPUT class="campo" TYPE="text" name="pass" id="pass" maxlength="20" disabled></center></td>
		<td></td>
		<td></td>
		<td></td>
		<td><face="arial" size="12"><center>CNH</><br><INPUT TYPE="text" name="cnh" id="cnh" maxlength="11"></center></td>
		<td><face="arial" size="12"><center>Categoria CNH</><br><INPUT TYPE="text" name="catcnh" maxlength="2" VALUE=""></center></td>
		<td><face="arial" size="12"><center>Estado Emissor</><br><INPUT TYPE="text" name="estemcnh" maxlength="20" VALUE=""></center></td>
	</tr>
	<tr>
		<td><face="arial" size="12"><center>RG</><br><INPUT class="campo" TYPE="text" name="rg" id="rg" maxlength="12" disabled></center></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td><face="arial" size="12"><center>Data de Emissão</><br><INPUT TYPE="text" name="dataemcnh" id="dataemcnh" maxlength="10" onKeyPress="dateMask(this,this.value)"></center></td>
		<td><face="arial" size="12"><center>Data de Validade</><br><INPUT TYPE="text" name="datavalcnh" id="datavalcnh" maxlength="10" onKeyPress="dateMask(this,this.value)"></center></td>
	</tr>
	</table>
	
	<br>
	<center>	<INPUT type="submit" value= "OK">
				<INPUT type="reset" value= "Limpar">
				<input type='button' onclick='javascript:history.back()' value='Voltar' name='Voltar'></center>
</form>

</body>
</html>