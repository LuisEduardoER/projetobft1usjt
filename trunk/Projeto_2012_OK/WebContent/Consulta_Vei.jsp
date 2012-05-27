<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
	String user = request.getParameter("user");
	String idi = request.getParameter("idi");
	String agencia = request.getParameter("agencia");
	String codigo = request.getParameter("codigo");
	String chassi = request.getParameter("chassi");
	String placa = request.getParameter("placa");
	String modelo = request.getParameter("modelo");
	String km = request.getParameter("km");
	String grupo = request.getParameter("grupo");
	String fabricante = request.getParameter("fabricante");
	String estado = request.getParameter("estado");
	String cidade = request.getParameter("cidade");
	String cor = request.getParameter("cor");
	String kmcontrolado = request.getParameter("kmcontrolado");
	String kmlivre = request.getParameter("kmlivre");
	String diaria = request.getParameter("diaria");
	String situacao = request.getParameter("situacao");
	
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<script src="idiomas\Portugues\Pt.js" type="text/javascript"></script>
    <script src="idiomas\English\Eng.js" type="text/javascript"></script>
    <script src="idiomas\Espanol\Es.js" type="text/javascript"></script>
    <script src="idiomas\knockout-2.0.0.js" type="text/javascript"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Consultar Veículo</title>
</head>
<body text="#000000" onload="<%=idi%>">
	
<form name="form1" id="form1" action = "Menu_Principal.jsp?user=<%= user %>&agencia=<%=agencia%>&idi=<%=idi %>" method = "post">

	<h1><P align="center"><label data-bind="text: consultavei"></label></h1></P>
	<face="arial" size="20"><center><label data-bind="text: dadosbasicos"></label></center><P>
	<center><table border = "0">
	<tr>
		<td COLSPAN = 2 ><face="arial" size="12"><center><label data-bind="text: fabricante"></label></><br><INPUT TYPE="text" name="fabricante" VALUE="<%= fabricante%>" disabled></center></td>
		<td COLSPAN = 2 ><face="arial" size="12"><center><label data-bind="text: modelo"></label></><br><INPUT TYPE="text" name="modelo" VALUE="<%= modelo%>" disabled></center></td>
		<td COLSPAN = 2><face="arial" size="12"><center><label data-bind="text: chassi"></label></><br><INPUT TYPE="text" name="chassi" VALUE="<%= chassi%>" disabled></center></td>
	</tr>
	<TR></TR>
	<tr>
		<td COLSPAN = 2 ><face="arial" size="12"><center><label data-bind="text: placa"></label></><br> <INPUT TYPE="text" name="placa" VALUE="<%= placa%>" disabled></center></td> 
		<td COLSPAN = 2 ><face="arial" size="12"><center><label data-bind="text: km"></label></><br> <INPUT TYPE="text" name="km" VALUE="<%= km%>" disabled></center></td>
		<td COLSPAN = 2 ><face="arial" size="12"><center><label data-bind="text: grupo"></label></><br><INPUT TYPE="text" name="grupo" VALUE="<%= grupo%>" disabled></center></td>
	</tr>
	<TR></TR>
	<tr>
		<td COLSPAN = 2 ><face="arial" size="12"><center><label data-bind="text: estado"></label></><br> <INPUT TYPE="text" name="estado" VALUE="<%= estado%>" disabled></center></td> 
		<td COLSPAN = 2 ><face="arial" size="12"><center><label data-bind="text: cidade"></label></><br> <INPUT TYPE="text" name="cidade" VALUE="<%= cidade%>" disabled></center></td>
		<td COLSPAN = 2 ><face="arial" size="12"><center><label data-bind="text: cor"></label></><br> <INPUT TYPE="text" name="cor" VALUE="<%= cor%>" disabled></center></td>
	</tr>

	</table>
	<P><P>
	<face="arial" size="16"><th><center><label data-bind="text: valores"></label></center></th><P><P>
	<center><table border = 0>
	<tr>	
		<td><face="arial" size="12"><center><label data-bind="text: kmlivre"></label></><br><INPUT TYPE="text" name="kmlivre" VALUE="<%= kmlivre%>" disabled></td>
		<td><face="arial" size="12"><center><label data-bind="text: kmcontrolado"></label></><br><INPUT TYPE="text" name="kmcontrolado" VALUE="<%= kmcontrolado%>" disabled></td>
		<td><face="arial" size="12"><center><label data-bind="text: diaria"></label></><br><INPUT TYPE="text" name="diaria" VALUE="<%= diaria%>" disabled></td>
	</tr>
	
	<tr>
		<td><face="arial" size="12"><center><label data-bind="text: codigo"></label></><br><INPUT TYPE="text" name="codigo" VALUE="<%= codigo%>" disabled></td>
		<td></td>
		<td><face="arial" size="12"><center><label data-bind="text: sit"></label></><br><INPUT TYPE="text" name="situacao" VALUE="<%= situacao%>" disabled></td>
	</tr>
	
	</table>
	<BR>
	<BR>
	<center>	<INPUT type="submit" value= "OK" data-bind="text: Enviar">
				<input type='button' onclick='javascript:history.back()' value='Voltar' name='Voltar' data-bind="text: voltar"></center>
</form>
</body>
</html>