<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
	String user = request.getParameter("user");
	String agencia = request.getParameter("agencia");
%>   
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastrar Pessoa Jurídica</title>

<script language="JavaScript" type="text/JavaScript">


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
<body text="#000000">

<form name="form1" id="form1" action = "Cadastra_CliJ_Banco.jsp?user=<%= user%>&agencia=<%=agencia%>" method = "post">	


	<h1><P align="center">Cadastro de Pessoa Jurídica</h1></P>
	<face="arial" size="20"><center>Cadastro Básico</center><P>
	<center><table border = "0">
	<tr>
		<td COLSPAN = 2 ><face="arial" size="12"><center>Nome Fantasia</><br><INPUT TYPE="text" name="nome" maxlength="40" size="40" VALUE=""></center></td>
		<td COLSPAN = 2><face="arial" size="12"><center>Telefone</><br><INPUT TYPE="text" name="fone" maxlength="11" onKeyPress="foneMask(this,this.value)"></center></td>
		<td COLSPAN = 2><face="arial" size="12"><center>E-mail</><br><INPUT TYPE="text" name="email" maxlength="40" size="40" VALUE=""></center></td>
	</tr>
	<tr>
		<td COLSPAN = 2 ><face="arial" size="12"><center>Razão Social</><br><INPUT TYPE="text" name="razao" maxlength="40" size="40" VALUE=""></center></td>
		<td COLSPAN = 2 ><face="arial" size="12"><center>CNPJ</><br><INPUT TYPE="text" name="cnpj" maxlength="15" size="15" VALUE=""></center></td>
		<td COLSPAN = 2 ><face="arial" size="12"><center>Inscrição Estadual</><br><INPUT TYPE="text" name="inscri" maxlength="40" size="40" VALUE=""></center></td>
	</tr>
	</table>
	<br><br>
	<face="arial" size="20"><center>Condutor</center><P>
	<center></center><table border = "0">
	<tr>
		<td><face="arial" size="12"><center>Nome</><br><INPUT TYPE="text" name="nomec" maxlength="40" size="40" VALUE=""></center></td>
		<td><face="arial" size="12"><center>CPF</><br><INPUT TYPE="text" name="cpf" id="cpf" maxlength="16" ></center></td>
		<td><face="arial" size="12"><center>RG</><br><INPUT TYPE="text" name="rg" id="rg" maxlength="12"></center></td>
	</tr>
	<tr>
		<td><face="arial" size="12"><center>CNH</><br><INPUT TYPE="text" name="cnh" id="cnh" maxlength="11"></center></td>
		<td><face="arial" size="12"><center>Categoria CNH</><br><INPUT TYPE="text" name="catcnh" maxlength="2" VALUE=""></center></td>
		<td><face="arial" size="12"><center>Estado Emissor</><br><INPUT TYPE="text" name="estemcnh" maxlength="20" VALUE=""></center></td>
	</tr>
	<tr>
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