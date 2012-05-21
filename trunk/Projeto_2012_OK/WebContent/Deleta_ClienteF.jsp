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
<title>Excluir Cliente</title>

<script language="JavaScript" type="text/JavaScript">


function habilitaCampo(valor)
	{
		if (valor == "Sim")
		{
			document.getElementById('cpf').disabled = true;
			document.getElementById('pass').disabled = false;
        }
		else
		{
			document.getElementById('cpf').disabled = false;
			document.getElementById('pass').disabled = true;
        }
}

</script>

</head>
<body text="#000000">


<form name="form1" id="form1" action="Deleta_CliF_Banco.jsp?user=<%= user%>&agencia=<%=agencia%>" method = "post">

	<h1><P align="center">Exclusão de Pessoa Física</h1></P>
	<face="arial" size="12">
	<table align="center" border=0>
	<tr>
		<td><center><input type="radio" name="consulta" id="estraS" value="Nao" onclick="habilitaCampo(this.value)"></></>Brasileiro<br><br>CPF</><br><input class="campo" TYPE="text" name="cpf" id="cpf" maxlength="16" disabled></td>
		<td><center><input type="radio" name="consulta" id="estraN" value="Sim" onclick="habilitaCampo(this.value)"></></>Estrangeiro<br><br>Passaporte</><br><input class="campo" TYPE="text" name="pass" id="pass" maxlength="20" disabled></td>
	</tr>
	</table>
	
	<BR><BR>
	<center>	<INPUT type="submit" value= "OK">
				<INPUT type="reset" value= "Limpar">
				<input type='button' onclick='javascript:history.back()' value='Voltar' name='Voltar'></center>
				
	</form>			
	</body>
</html>