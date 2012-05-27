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
<title>Consultar Locação</title>

<script language="JavaScript" type="text/JavaScript">


function habilitaCampo(valor)
	{
		if (valor == "locacao")
		{
			document.getElementById('tipocli').disabled = true;
			document.getElementById('cli').disabled = true;
			document.getElementById('vei').disabled = true;
			document.getElementById('loc').disabled = false;
        }
		else if (valor == "cliente")
		{
			document.getElementById('tipocli').disabled = false;
			document.getElementById('cli').disabled = false;
			document.getElementById('loc').disabled = true;
			document.getElementById('vei').disabled = true;
        }
		else
		{
			document.getElementById('tipocli').disabled = true;
			document.getElementById('cli').disabled = true;
			document.getElementById('loc').disabled = true;
			document.getElementById('vei').disabled = false;
        }
}

</script>

</head>
<body text="#000000" onload="<%=idi%>">


<form name="form1" id="form1" action="Consulta_Loc_Banco.jsp?user=<%= user%>&agencia=<%=agencia%>&idi=<%= idi%>" method = "post">

	<h1><P align="center"><label data-bind="text: consultaloc"></label></h1></P>
	<face="arial" size="12">
	<table align="center" border=0>
	<tr>
		<td><center><input type="radio" name="con" id="locacao" value="locacao" onclick="habilitaCampo(this.value)"></></><label data-bind="text: loc"></label><br><br><label data-bind="text: codigo"></label></><br><input class="campo" TYPE="text" name="loc" id="loc" maxlength="20" disabled></td>
		<td><center><input type="radio" name="con" id="cliente" value="cliente" onclick="habilitaCampo(this.value)"></></><label data-bind="text: cliente"></label><br><br>
			<center><SELECT NAME="tipocli" class="campo" id="tipocli" disabled>
									<OPTION >PF
									<OPTION >PJ
									<OPTION >PE
									</SELECT><br><input class="campo" TYPE="text" name="cli" id="cli" maxlength="20" disabled></td>
		<td><center><input type="radio" name="con" id="veiculo" value="veiculo" onclick="habilitaCampo(this.value)"></></><label data-bind="text: veiculo"></label><br><br><label data-bind="text: codigo"></label></><br><input class="campo" TYPE="text" name="vei" id="vei" maxlength="20" disabled></td>
	</tr>
	</table>
	
	<BR><BR>
	<center>	<INPUT type="submit" value= "OK" data-bind="text: enviar">
				<INPUT type="reset" value= "Limpar" data-bind="text: limpar">
				<input type='button' onclick='javascript:history.back()' value='Voltar' name='Voltar' data-bind="text: voltar"></center>
				
	</form>			
	</body>
</html>