<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
	String user = request.getParameter("user");
	String idi = request.getParameter("idi");
	String agencia = request.getParameter("agencia");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<script src="idiomas\Portugues\Pt.js" type="text/javascript"></script>
    <script src="idiomas\English\Eng.js" type="text/javascript"></script>
    <script src="idiomas\Espanol\Es.js" type="text/javascript"></script>
    <script src="idiomas\knockout-2.0.0.js" type="text/javascript"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Alterar Cliente</title>
</head>
<body text="#000000" onload="<%=idi%>">


<form name="form1" id="form1" action="Altera_CliJ_Banco.jsp?user=<%= user%>&agencia=<%=agencia%>&idi=<%=idi%>" method = "post">

	<h1><P align="center"><label data-bind="text: editapj"></label></h1></P>
	<face="arial" size="12">
	<table align="center" border=0>
	<tr>
		<td><center><label data-bind="text: cnpj"></label></><br><input TYPE="text" name="cnpj" id="cnpj" maxlength="15"></td>
	</tr>
	</table>
	
	<BR><BR>
	<center>	<INPUT type="submit" value= "OK" data-bind="text: Enviar">
				<INPUT type="reset" value= "Limpar" data-bind="text: limpar">
				<input type='button' onclick='javascript:history.back()' value='Voltar' name='Voltar' data-bind="text: voltar"></center>
				
	</form>			
	</body>
</html>