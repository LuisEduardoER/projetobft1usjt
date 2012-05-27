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
	String codloc= ""+request.getParameter("codloc");
	String cpf = request.getParameter("cpf");
	String pass = request.getParameter("pass");
	String cnpj = request.getParameter("cnpj");
	String codvei = ""+request.getParameter("codvei");
	String agencialoc= request.getParameter("agencialoc");
	String dataloc = request.getParameter("dataloc");
	String horaloc = request.getParameter("horaloc");
	String datadev = request.getParameter("datadev");
	String agenciadev = request.getParameter("agenciadev");
	String km = request.getParameter("km");
	String gps = request.getParameter("gps");
	String bebe = request.getParameter("bebe");
	String motorista = request.getParameter("motorista");
	String tipotarifa = request.getParameter("tipotarifa");
	String sitloc = request.getParameter("sitloc");
	
%>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<script src="idiomas\Portugues\Pt.js" type="text/javascript"></script>
    <script src="idiomas\English\Eng.js" type="text/javascript"></script>
    <script src="idiomas\Espanol\Es.js" type="text/javascript"></script>
    <script src="idiomas\knockout-2.0.0.js" type="text/javascript"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Consultar Locação </title>

</head>
<body text="#000000" onload="<%=idi%>">

<form name="form1" id="form1" action = "Menu_Principal.jsp?user=<%=user%>&agencia=<%=agencia%>&idi=<%=idi%>" method = "post">

	<h1><P align="center"><label data-bind="text: consultaloc"></label></h1></P>
	<face="arial" size="18"><th><center><label data-bind="text: clievei"></label></center></th>	
	
	<center><table border=0>
	<tr>
		<td><face="arial" size="12"><center><label data-bind="text: idcli"></label></center></td>
		<td><face="arial" size="12"><center><label data-bind="text: tipo"></label></center></td>
	</tr>
	<tr>
		<%
			if(cnpj.equals("") && pass.equals(""))	
			{
			%>
			<td><center><INPUT TYPE="text" name="idcli" VALUE="<%=cpf%>" disabled>&nbsp&nbsp<img src= "imagens/lupa.png" width=18 height=18></center></td>
			<td>
			<center><SELECT NAME="tipocli" disabled>
									<OPTION selected>PF
									<OPTION >PJ
									<OPTION >PE
									</SELECT></td>
			<%
			}
			else if(cpf.equals("") && pass.equals(""))
			{
			%>
			<td><center><INPUT TYPE="text" name="idcli" VALUE="<%=cnpj%>" disabled>&nbsp&nbsp<img src= "imagens/lupa.png" width=18 height=18></center></td>
			<td>
			<center><SELECT NAME="tipocli" disabled>
									<OPTION >PF
									<OPTION selected>PJ
									<OPTION >PE
									</SELECT></td>
			<%
			}
			else if(cnpj.equals("") && cpf.equals(""))
			{
			%>
			<td><center><INPUT TYPE="text" name="idcli" VALUE="<%=pass%>" disabled>&nbsp&nbsp<img src= "imagens/lupa.png" width=18 height=18></center></td>
			<td>
			<center><SELECT NAME="tipocli" disabled>
									<OPTION >PF
									<OPTION >PJ
									<OPTION selected>PE
									</SELECT></td>
			<%
			}
			%>
	</tr>
	<tr>
		<td><face="arial" size="12"><center><label data-bind="text: idvei"></label></center></td>
	</tr>
	<tr>
		<td><center><INPUT TYPE="text" name="idvei" VALUE="<%=codvei%>" disabled>&nbsp&nbsp<img src= "imagens/lupa.png" width=18 height=18></center></td>
	</tr>
	</table>
	<br>
	<center><table border=0>
	<tr>
		<td colspan=2>	
			<face="arial" size="12"><center><label data-bind="text: acessorio"></label></> 
			<%
			if(gps.equals("sim"))
			{
			%>
				<INPUT TYPE="checkbox" NAME="gps" checked disabled><label data-bind="text: gps"></label></>
			<%
			}
			else
			{
			%>
				<INPUT TYPE="checkbox" NAME="gps" disabled><label data-bind="text: gps"></label></>
			<%
			}
			if(bebe.equals("sim"))
			{
			%>
        		<INPUT TYPE="checkbox" NAME="bebe" checked disabled><label data-bind="text: bebe"></label></>
        	<%
			}
        	else
        	{
        	%>
        		<INPUT TYPE="checkbox" NAME="bebe" disabled><label data-bind="text: bebe"></label></>
        	<%
        	}
        	if(motorista.equals("sim"))
        	{
        	%>
				<INPUT TYPE="checkbox" NAME="motorista" checked disbled><label data-bind="text: motorista"></label></>
			<%
        	}
			else
			{
			%>
				<INPUT TYPE="checkbox" NAME="motorista" disbled><label data-bind="text: motorista"></label></>
			<%
			}
			%>
		</td>
	</tr>
		<td colspan=2>
			<face="arial" size="12"><center><label data-bind="text: tarifa"></label></>
			<%if(tipotarifa.equals("Kmlivre")) 
			{
			%>
				<input type="radio" name="km" id="kml" value="kmlivre" checked disabled><label data-bind="text: livre"></label></>
				<input type="radio" name="km" id="kmc" value="kmcontrolado" disabled><label data-bind="text: controlado"></label></>
			<%
			}
			else
			{
			%>
				<input type="radio" name="km" id="kml" value="kmlivre" disabled><label data-bind="text: livre"></label></>
				<input type="radio" name="km" id="kmc" value="kmcontrolado" checked disabled><label data-bind="text: controlado"></label></>
			<%}%>
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
		<td><INPUT TYPE="text" name="dataloc" VALUE="<%=dataloc%>" disabled></td>
		<td><INPUT TYPE="text" name="horaloc" VALUE="<%=horaloc%>" disabled></td>
		<td><SELECT NAME="agencialoc" disabled>
					<OPTION >mooca7367
					<OPTION >florianopolis035
					<OPTION Selected> <%=agencialoc%>
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
		<td><INPUT TYPE="text" name="datadev" VALUE="<%=datadev%>" disabled></td>
		<td><SELECT NAME="agenciadev" disabled>
					<OPTION >mooca7367
					<OPTION >florianopolis035
					<OPTION Selected> <%=agenciadev%>
					</SELECT></td>
	</tr>
	<tr>
		<td><center><face="arial" size="12"><label data-bind="text: codloc"></label></td>
		<td><INPUT TYPE="text" name="registro" VALUE="<%=codloc%>" disabled></td>
	</tr>
	</table>
	<br>
	<INPUT TYPE="submit" class="campo" nome="ok" id="ok" VALUE= "OK" data-bind="text: Enviar">
	<input type='button' onclick='javascript:history.back()' value='Voltar' name='Voltar' data-bind="text: voltar">
	
	</form>		
</body>
</html>