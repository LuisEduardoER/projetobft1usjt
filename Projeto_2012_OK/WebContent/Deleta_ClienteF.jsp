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
<body text="#000000" onload="<%=idi%>">


<form name="form1" id="form1" action="Deleta_CliF_Banco.jsp?user=<%= user%>&agencia=<%=agencia%>&idi=<%=idi%>" method = "post">

	<h1><P align="center"><label data-bind="text: delpf"></label></h1></P>
	<face="arial" size="12">
	<table align="center" border=0>
	<tr>
		<td><center><input type="radio" name="consulta" id="estraS" value="Nao" onclick="habilitaCampo(this.value)"></></><label data-bind="text: brasileiro"></label><br><br><label data-bind="text: cpf"></label></><br><input class="campo" TYPE="text" name="cpf" id="cpf" maxlength="16" disabled></td>
		<td><center><input type="radio" name="consulta" id="estraN" value="Sim" onclick="habilitaCampo(this.value)"></></><label data-bind="text: estrangeiro"></label><br><br><label data-bind="text: pass"></label></><br><input class="campo" TYPE="text" name="pass" id="pass" maxlength="20" disabled></td>
	</tr>
	</table>
	
	<BR><BR>
	<center>	<INPUT type="submit" value= "OK" data-bind="text: enviar">
				<INPUT type="reset" value= "Limpar" data-bind="text: limpar">
				<input type='button' onclick='javascript:history.back()' value='Voltar' name='Voltar' data-bind="text: voltar"></center>
				
	</form>			
	</body>
</html>