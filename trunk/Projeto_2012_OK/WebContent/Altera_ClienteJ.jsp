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
<title>Alterar Cliente</title>
</head>
<body text="#000000">


<form name="form1" id="form1" action="Altera_CliJ_Banco.jsp?user=<%= user%>&agencia=<%=agencia%>" method = "post">

	<h1><P align="center">Altera Cliente Pessoa Jurídica</h1></P>
	<face="arial" size="12">
	<table align="center" border=0>
	<tr>
		<td><center>CNPJ</><br><input TYPE="text" name="cnpj" id="cnpj" maxlength="15"></td>
	</tr>
	</table>
	
	<BR><BR>
	<center>	<INPUT type="submit" value= "OK">
				<INPUT type="reset" value= "Limpar">
				<input type='button' onclick='javascript:history.back()' value='Voltar' name='Voltar'></center>
				
	</form>			
	</body>
</html>