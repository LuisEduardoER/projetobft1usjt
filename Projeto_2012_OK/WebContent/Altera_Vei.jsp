<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
	String user = request.getParameter("user");
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Alterar Ve�culo</title>
</head>
<body text="#000000">
	
<form name="form1" id="form1" action = "Altera_Vei_Banco2.jsp?user=<%= user%>&agencia=<%=agencia%>&codigo=<%=codigo%>&situacao=<%=situacao%>&chassi=<%=chassi%>&placa=<%=placa%>" method = "post">

	<h1><P align="center">Edi��o de Ve�culo</h1></P>
	<face="arial" size="20"><center>Dados B�sicos</center><P>
	<center><table border = "0">
	<tr>
		<td COLSPAN = 2 ><face="arial" size="12"><center>Fabricante</><br>
							<SELECT NAME="fabricante">
						  	<OPTION >Chevrolet
						  	<OPTION >Citro�n
							<OPTION >Fiat
							<OPTION >Ford
							<OPTION >GM
							<OPTION >Honda
							<OPTION >Hyundai
							<OPTION >Peugeot
							<OPTION >Renault
							<OPTION >Toyota
							<OPTION >Volkswagem
							<OPTION SELECTED><%= fabricante%>
						  	</SELECT></center>
		</td>
		<td COLSPAN = 2 ><face="arial" size="12"><center>Modelo</><br><INPUT TYPE="text" name="modelo" VALUE="<%= modelo%>"></center></td>
		<td COLSPAN = 2><face="arial" size="12"><center>Chassi</><br><INPUT TYPE="text" name="chassi" VALUE="<%= chassi%>" disabled></center></td>
	</tr>
	<TR></TR>
	<tr>
		<td COLSPAN = 2 ><face="arial" size="12"><center>Placa</><br> <INPUT TYPE="text" name="placa" VALUE="<%= placa%>" disabled></center></td> 
		<td COLSPAN = 2 ><face="arial" size="12"><center>KM</><br> <INPUT TYPE="text" name="km" VALUE="<%= km%>"></center></td>
		<td COLSPAN = 2 ><face="arial" size="12"><center>Grupo</><br>
							<SELECT NAME="grupo">
						  	<OPTION >A-Econ�mico
							<OPTION >C-Econ�mico com Ar
							<OPTION >F-Intermedi�rio
							<OPTION >G-Intermedi�rio Wagon Especial
							<OPTION >H-Executivo
							<OPTION >I-Utilit�rio
							<OPTION >K-Executivo Luxo
							<OPTION >M-Intermedi�rio Wagon
							<OPTION >N-Pick-up
							<OPTION >P-4X4 Especial
							<OPTION >R-Minivan
							<OPTION >U-Furg�o
							<OPTION >Y-Blindado
							<OPTION >Utilit�rio
							<OPTION SELECTED><%= grupo%>
						  	</SELECT>
	</td>
	</tr>
	<TR></TR>
	<tr>
		<td COLSPAN = 2 ><face="arial" size="12"><center>Estado</><br> <INPUT TYPE="text" name="estado" VALUE="<%= estado%>"></center></td> 
		<td COLSPAN = 2 ><face="arial" size="12"><center>Cidade</><br> <INPUT TYPE="text" name="cidade" VALUE="<%= cidade%>"></center></td>
		<td COLSPAN = 2 ><face="arial" size="12"><center>Cor</><br> <INPUT TYPE="text" name="cor" VALUE="<%= cor%>"></center></td>
	</tr>

	</table>
	<P><P>
	<face="arial" size="16"><th><center>Valores</center></th><P><P>
	<center><table border = 0>
	<tr>	
		<td><face="arial" size="12"><center>KM Livre R$</><br><INPUT TYPE="text" name="kmlivre" VALUE="<%= kmlivre%>"></td>
		<td><face="arial" size="12"><center>KM Controlado R$</><br><INPUT TYPE="text" name="kmcontrolado" VALUE="<%= kmcontrolado%>"></td>
		<td><face="arial" size="12"><center>Di�ria R$</><br><INPUT TYPE="text" name="diaria" VALUE="<%= diaria%>"></td>
	</tr>
	
	<tr>
		<td><face="arial" size="12"><center>C�digo</><br><INPUT TYPE="text" name="codigo" VALUE="<%= codigo%>" disabled></td>
		<td></td>
		<td><face="arial" size="12"><center>Situa��o</><br><INPUT TYPE="text" name="situacao" VALUE="<%= situacao%>" disabled></td>
	</tr>
	
	</table>
	<BR>
	<BR>
	<center>	<INPUT type="submit" value= "OK">
				<input type='button' onclick='javascript:history.back()' value='Voltar' name='Voltar'></center>
</form>
</body>
</html>