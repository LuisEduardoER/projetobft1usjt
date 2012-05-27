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
	String idi = request.getParameter("idi");
	String data = (new java.text.SimpleDateFormat("dd/MM/yyyy").format(new java.util.Date()));
	String hora = (new java.text.SimpleDateFormat("HH:mm").format(new java.util.Date()));
	String registro = ""+((int) (1 + (Math.random() * 10000)));
%>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<script src="idiomas\Portugues\Pt.js" type="text/javascript"></script>
    <script src="idiomas\English\Eng.js" type="text/javascript"></script>
    <script src="idiomas\Espanol\Es.js" type="text/javascript"></script>
    <script src="idiomas\knockout-2.0.0.js" type="text/javascript"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastrar Locação </title>

<script language="JavaScript" type="text/JavaScript">


function habilitaCampo(valor)
	{
		if (valor == "kmlivre")
		{
			document.getElementById('ok').disabled = false;
        }
		else
		{
			document.getElementById('ok').disabled = false;
        }
}
</script>

</head>
<body text="#000000" onload="<%=idi%>">

<form name="form1" id="form1" action = "Cadastra_Loc_Banco.jsp?user=<%= user%>&agencia=<%=agencia%>&idi=<%=idi%>" method = "post">

	<h1><P align="center"><label data-bind="text: cadastraloc"></label></h1></P>
	<face="arial" size="18"><th><center><label data-bind="text: clievei"></label></center></th>	
	
	<center><table border=0>
	<tr>
		<td><face="arial" size="12"><center><label data-bind="text: idcli"></label></center></td>
		<td><face="arial" size="12"><center><label data-bind="text: tipo"></label></center></td>
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
		<td><face="arial" size="12"><center><label data-bind="text: idvei"></label></center></td>
	</tr>
	<tr>
		<td><center><INPUT TYPE="text" name="idvei" VALUE="">&nbsp&nbsp<img src= "imagens/lupa.png" width=18 height=18></center></td>
	</tr>
	</table>
	<br>
	<center><table border=0>
	<tr>
		<td colspan=2>	
			<face="arial" size="12"><center><label data-bind="text: acessorio"></label></> 
			<INPUT TYPE="checkbox" NAME="gps"><label data-bind="text: gps"></label></>
        	<INPUT TYPE="checkbox" NAME="bebe"><label data-bind="text: bebe"></label></>
			<INPUT TYPE="checkbox" NAME="motorista"><label data-bind="text: motorista"></label></>
		</td>
	</tr>
		<td colspan=2>
			<face="arial" size="12"><center><label data-bind="text: tarifa"></label></>
			<input type="radio" name="km" id="kml" value="kmlivre" onclick="habilitaCampo(this.value)"><label data-bind="text: livre"></label></>
			<input type="radio" name="km" id="kmc" value="kmcontrolado" onclick="habilitaCampo(this.value)"><label data-bind="text: controlado"></label></>
		</td>
	</table></center>
	
	<br><br>
	<center><table border=0>
	<tr>
	<td></td>
	<td><face="arial" size="16"><center><label data-bind="text: dadoscomp"></label></center></td>
	<td></td>
	</tr>
	<tr></tr>
	<tr>
		<td><face="arial" size="12"><center><label data-bind="text: dataemp"></label></td>
		<td><face="arial" size="12"><center><label data-bind="text: horaemp"></label></td>
		<td><face="arial" size="12"><center><label data-bind="text: localemp"></label></td>
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
	<td colspan=2><center><label data-bind="text: devprev"></label></td>
	</tr>
	<tr></tr>
	<tr>
		<td><face="arial" size="12"><center><label data-bind="text: data"></label></td>
		<td><face="arial" size="12"><center><label data-bind="text: local"></label></td>
	</tr>
	<tr>
		<td><INPUT TYPE="text" name="datadev" VALUE=""></td>
		<td><SELECT NAME="agenciadev">
					<OPTION >mooca7367
					<OPTION SELECTED>florianopolis035
					</SELECT></td>
	</tr>
	<tr>
		<td><center><face="arial" size="12"><label data-bind="text: codloc"></label></td>
		<td><INPUT TYPE="text" name="registro" VALUE="<%=registro%>" ></td>
	</tr>
	</table>
	
	<br></center>
	
	<INPUT TYPE="submit" class="campo" nome="ok" id="ok" VALUE= "OK" data-bind="text: Enviar" disabled>
	<input type='button' onclick='javascript:history.back()' value='Voltar' name='Voltar' data-bind="text: voltar">
	
	</form>		
</body>
</html>