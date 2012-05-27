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
<title>Cadastrar Veículo</title>
</head>
<body text="#000000" onload="<%=idi%>">
	
<form name="form1" id="form1" action = "Cadastra_Vei_Banco.jsp?user=<%= user%>&agencia=<%=agencia%>&idi=<%=idi%>" method = "post">

	<h1><P align="center"><label data-bind="text: cadastravei"></label></h1></P>
	<face="arial" size="20"><center><label data-bind="text: cadastrobasico"></label></center><P>
	<center><table border = "0">
	<tr>
		<td COLSPAN = 2 ><face="arial" size="12"><center><label data-bind="text: fabricante"></label></><br><SELECT NAME="fabricante">
						  	<OPTION >Chevrolet
						  	<OPTION >Citroën
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
		<td COLSPAN = 2 ><face="arial" size="12"><center><label data-bind="text: modelo"></label></><br><INPUT TYPE="text" name="modelo" VALUE=""></center></td>
		<td COLSPAN = 2><face="arial" size="12"><center><label data-bind="text: chassi"></label></><br><INPUT TYPE="text" name="chassi" VALUE=""></center></td>
	</tr>
	<TR></TR>
	<tr>
		<td COLSPAN = 2 ><face="arial" size="12"><center><label data-bind="text: placa"></label></><br> <INPUT TYPE="text" name="placa" VALUE=""></center></td> 
		<td COLSPAN = 2 ><face="arial" size="12"><center><label data-bind="text: km"></label></><br> <INPUT TYPE="text" name="km" VALUE=""></center></td>
		<td COLSPAN = 2 ><face="arial" size="12"><center><label data-bind="text: grupo"></label></><br>  
		<SELECT NAME="grupo">
							  	<OPTION >A-Economico
							  	<OPTION >C-Economico com Ar
							  	<OPTION >F-Intermediario
							  	<OPTION >G-Intermediario Wagon Especial
							  	<OPTION >H-Executivo
							  	<OPTION >I-Utilitario
							  	<OPTION >K-Executivo Luxo
							  	<OPTION >M-Intermediario Wagon
							  	<OPTION >N-Pick-up
							  	<OPTION >P-4X4 Especial
							  	<OPTION >R-Minivan
							  	<OPTION >U-Furgao
							  	<OPTION >Y-Blindado
								</SELECT></center></td>
	</tr>
	<TR></TR>
	<tr>
		<td COLSPAN = 2 ><face="arial" size="12"><center><label data-bind="text: estado"></label></><br> <INPUT TYPE="text" name="estado" VALUE=""></center></td> 
		<td COLSPAN = 2 ><face="arial" size="12"><center><label data-bind="text: cidade"></label></><br> <INPUT TYPE="text" name="cidade" VALUE=""></center></td>
		<td COLSPAN = 2 ><face="arial" size="12"><center><label data-bind="text: cor"></label></><br> <INPUT TYPE="text" name="cor" VALUE=""></center></td>
	</tr>

	</table>
	<P><P>
	<face="arial" size="16"><th><center><label data-bind="text: valores"></label></center></th><P><P>
	<center><table border = 0>
	<tr>	
		<td><face="arial" size="12"><center><label data-bind="text: kmlivre"></label></><br><INPUT TYPE="text" name="kmlivre" VALUE=""></td>
		<td><face="arial" size="12"><center><label data-bind="text: kmcontrolado"></label></><br><INPUT TYPE="text" name="kmcontrolado" VALUE=""></td>
		<td><face="arial" size="12"><center><label data-bind="text: diaria"></label></><br><INPUT TYPE="text" name="diaria" VALUE=""></td>

	</tr>
	</table>

	<BR><BR>
	<center>	<INPUT type="submit" value= "OK" data-bind="text: Enviar">
				<INPUT type="reset" value= "Limpar" data-bind="text: limpar">
				<input type='button' onclick='javascript:history.back()' value='Voltar' name='Voltar' data-bind="text: voltar"></center>
</form>
</body>
</html>