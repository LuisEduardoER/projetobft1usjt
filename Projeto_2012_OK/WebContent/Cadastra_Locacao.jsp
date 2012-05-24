<%@page import="java.text.DateFormat"%>
<%@ page language="java" 
	import="java.util.*"
	import="javax.swing.*"
	import="java.text.SimpleDateFormat"
	contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
	String user = request.getParameter("user");
	String agencia = request.getParameter("agencia");
	String data = (new java.text.SimpleDateFormat("dd/MM/yyyy").format(new java.util.Date()));
	String hora = (new java.text.SimpleDateFormat("HH:mm").format(new java.util.Date()));
	String registro = ""+((int) (1 + (Math.random() * 10000)));
%>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastrar Locação </title>
</head>
<body text="#000000">

<form name="form1" id="form1" action = "Cadastra_Loc_Banco.jsp?user=<%= user%>&agencia=<%=agencia%>" method = "post">

	<h1><P align="center">Cadastrar Locação</h1></P>
	<face="arial" size="18"><th><center>Cliente e Veículo</center></th>	
	
	<center><table border=0>
	<tr>
		<td><face="arial" size="12"><center>ID do Cliente</center></td>
		<td><face="arial" size="12"><center>Tipo</center></td>
	</tr>
	<tr>
		<td><center><INPUT TYPE="text" name="idcli" VALUE="">&nbsp&nbsp<img src= "imagens/lupa.png" width=18 height=18></center></td>
		<td><center><SELECT NAME="tipocli">
									<OPTION >PF
									<OPTION >PJ
									<OPTION >PE
									</SELECT></td>
	</tr>
	<tr>
		<td><face="arial" size="12"><center>ID do Veículo</center></td>
		<td><face="arial" size="12"><center>Tipo</center></td>
	</tr>
	<tr>
		<td><center><INPUT TYPE="text" name="idvei" VALUE="">&nbsp&nbsp<img src= "imagens/lupa.png" width=18 height=18></center></td>
		<td><center><SELECT NAME="tipokm">
									<OPTION >KMLivre
									<OPTION >KMControlado
									</SELECT></td>
	</tr>
	</table>
	<br>
	<center><table border=0>
	<tr>
		<td colspan=2>	
			<face="arial" size="12"><center>Acessórios:</> 
			<INPUT TYPE="checkbox" NAME="gps">Navagador GPS</>
        	<INPUT TYPE="checkbox" NAME="bebe">Cadeira de Bebê</>
			<INPUT TYPE="checkbox" NAME="motorista">Motorista</>
		</td>
	</tr>
		<td colspan=2>
			<face="arial" size="12"><center>Tipo de Tarifa:</>
			<input type="radio" name="km" value="kmlivre">KM Livre</>
			<input type="radio" name="km" value="kmcontrolado">KM Controlado</>
		</td>
	</table></center>
	
	<br><br>
	<center><table border=0>
	<tr>
	<td></td>
	<td><face="arial" size="16"><center>Dados Complementares</center></td>
	<td></td>
	</tr>
	<tr></tr>
	<tr>
		<td><face="arial" size="12"><center>Data Empréstimo</td>
		<td><face="arial" size="12"><center>Hora Empréstimo</td>
		<td><face="arial" size="12"><center>Local Empréstimo</td>
	</tr>
	<tr>
		<td><INPUT TYPE="text" name="dataloc" VALUE="<%=data %>"></td>
		<td><INPUT TYPE="text" name="horaloc" VALUE="<%=hora %>"></td>
		<td><SELECT NAME="agencialoc">
					<OPTION >mooca7367
					<OPTION >florianopolis035
					<OPTION Selected> <%=agencia %>
					</SELECT></td>
	</tr>
	</table>
	<br>
	
	<center><table border=0>
	<tr>
	<td></td>
	<td>Devolução Prevista</td>
	<td></td>
	</tr>
	<tr></tr>
	<tr>
		<td><face="arial" size="12"><center>Data</td>
		<td><face="arial" size="12"><center>Hora</td>
		<td><face="arial" size="12"><center>Local</td>
	</tr>
	<tr>
		<td><INPUT TYPE="text" name="datadev" VALUE=""></td>
		<td><INPUT TYPE="text" name="horadev" VALUE=""></td>
		<td><SELECT NAME="agenciadev">
					<OPTION >mooca7367
					<OPTION SELECTED>florianopolis035
					</SELECT></td>
	</tr>
	</table>
	
	<br></center>
	<face="arial" size="12">Número de Registro</> <INPUT TYPE="text" NAME="registro" VALUE="<%=registro %>">
	<INPUT TYPE="submit" VALUE= "OK">
	<input type='button' onclick='javascript:history.back()' value='Voltar' name='Voltar'>
	
	</form>		
</body>
</html>