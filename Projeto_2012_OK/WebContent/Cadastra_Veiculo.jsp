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
<title>Cadastrar Ve�culo</title>
</head>
<body text="#000000">
	
<form name="form1" id="form1" action = "Cadastra_Vei_Banco.jsp?user=<%= user%>&agencia=<%=agencia%>" method = "post">

	<h1><P align="center">Cadastro de Ve�culo</h1></P>
	<face="arial" size="20"><center>Cadastro B�sico</center><P>
	<center><table border = "0">
	<tr>
		<td COLSPAN = 2 ><face="arial" size="12"><center>Fabricante</><br><SELECT NAME="fabricante">
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
						  	</SELECT></center> 
		</td>
		<td COLSPAN = 2 ><face="arial" size="12"><center>Modelo</><br><INPUT TYPE="text" name="modelo" VALUE=""></center></td>
		<td COLSPAN = 2><face="arial" size="12"><center>Chassi</><br><INPUT TYPE="text" name="chassi" VALUE=""></center></td>
	</tr>
	<TR></TR>
	<tr>
		<td COLSPAN = 2 ><face="arial" size="12"><center>Placa</><br> <INPUT TYPE="text" name="placa" VALUE=""></center></td> 
		<td COLSPAN = 2 ><face="arial" size="12"><center>KM</><br> <INPUT TYPE="text" name="km" VALUE=""></center></td>
		<td COLSPAN = 2 ><face="arial" size="12"><center>Grupo</><br>  <SELECT NAME="grupo">
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
								</SELECT></center></td>
	</tr>
	<TR></TR>
	<tr>
		<td COLSPAN = 2 ><face="arial" size="12"><center>Estado</><br> <INPUT TYPE="text" name="estado" VALUE=""></center></td> 
		<td COLSPAN = 2 ><face="arial" size="12"><center>Cidade</><br> <INPUT TYPE="text" name="cidade" VALUE=""></center></td>
		<td COLSPAN = 2 ><face="arial" size="12"><center>Cor</><br> <INPUT TYPE="text" name="cor" VALUE=""></center></td>
	</tr>

	</table>
	<P><P>
	<face="arial" size="16"><th><center>Valores</center></th><P><P>
	<center><table border = 0>
	<tr>	
		<td><face="arial" size="12"><center>KM Livre R$</><br><INPUT TYPE="text" name="kmlivre" VALUE=""></td>
		<td><face="arial" size="12"><center>KM Controlado R$</><br><INPUT TYPE="text" name="kmcontrolado" VALUE=""></td>
		<td><face="arial" size="12"><center>Di�ria R$</><br><INPUT TYPE="text" name="diaria" VALUE=""></td>

	</tr>
	</table>

	<BR><BR>
	<center>	<INPUT type="submit" value= "OK">
				<INPUT type="reset" value= "Limpar">
				<input type='button' onclick='javascript:history.back()' value='Voltar' name='Voltar'></center>
</form>
</body>
</html>