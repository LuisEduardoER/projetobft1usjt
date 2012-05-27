<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
	String user = request.getParameter("user");
	String agencia = request.getParameter("agencia");
	String idi = request.getParameter("idi");
	String nome = request.getParameter("nome");
	String nomecond = request.getParameter("nomec");
	String fone = request.getParameter("fone");
	String email = request.getParameter("email");
	String razao = request.getParameter("razao");
	String inscri = request.getParameter("inscri");
	String cnh = request.getParameter("cnh");
	String catcnh = request.getParameter("catcnh");
	String estadocnh = request.getParameter("estemcnh");
	String emiscnh = request.getParameter("dataemcnh");
	String valcnh = request.getParameter("datavalcnh");
	String cpf = request.getParameter("cpf");
	String cnpj = request.getParameter("cnpj");
	String rg = request.getParameter("rg");
%>   
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<script src="idiomas\Portugues\Pt.js" type="text/javascript"></script>
    <script src="idiomas\English\Eng.js" type="text/javascript"></script>
    <script src="idiomas\Espanol\Es.js" type="text/javascript"></script>
    <script src="idiomas\knockout-2.0.0.js" type="text/javascript"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Altera Pessoa Jurídica</title>

</head>
<body text="#000000" onload="<%=idi%>">

<form name="form1" id="form1" action = "Altera_CliJ_Banco2.jsp?user=<%= user%>&agencia=<%=agencia%>&razao=<%=razao%>&cnpj=<%=cnpj%>&inscri=<%=inscri%>&idi=<%=idi%>" method = "post">	


	<h1><P align="center"><label data-bind="text: editapj"></label></h1></P>
	<face="arial" size="20"><center><label data-bind="text: cadastrobasico"></label></center><P>
	<center><table border = "0">
	<tr>
		<td COLSPAN = 2 ><face="arial" size="12"><center><label data-bind="text: nomefant"></label></><br><INPUT TYPE="text" name="nome" size="40" VALUE="<%= nome%>"></center></td>
		<td COLSPAN = 2><face="arial" size="12"><center><label data-bind="text: telefone"></label></><br><INPUT TYPE="text" name="fone" maxlength="11" Value=<%= fone%> ></center></td>
		<td COLSPAN = 2><face="arial" size="12"><center><label data-bind="text: email"></label></><br><INPUT TYPE="text" name="email" size="40" VALUE=<%= email%>></center></td>
	</tr>
	<tr>
		<td COLSPAN = 2 ><face="arial" size="12"><center><label data-bind="text: razao"></label></><br><INPUT TYPE="text" name="razao" size="40" VALUE="<%= razao%>"disabled></center></td>
		<td COLSPAN = 2 ><face="arial" size="12"><center><label data-bind="text: cnpj"></label></><br><INPUT TYPE="text" name="cnpj" maxlength="15" size="15" VALUE=<%= cnpj%> disabled></center></td>
		<td COLSPAN = 2 ><face="arial" size="12"><center><label data-bind="text: inscri"></label></><br><INPUT TYPE="text" name="inscri" maxlength="40" size="40" VALUE=<%= inscri%> disabled></center></td>
	</tr>
	</table>
	<br><br>
	<face="arial" size="20"><center><label data-bind="text: condutor"></label></center><P>
	<center></center><table border = "0">
	<tr>
		<td><face="arial" size="12"><center><label data-bind="text: nome"></label></><br><INPUT TYPE="text" name="nomec" size="40" VALUE="<%= nomecond%>" ></center></td>
		<td><face="arial" size="12"><center><label data-bind="text: cpf"></label></><br><INPUT TYPE="text" name="cpf" id="cpf" maxlength="16" value=<%= cpf%> ></center></td>
		<td><face="arial" size="12"><center><label data-bind="text: rg"></label></><br><INPUT TYPE="text" name="rg" id="rg" maxlength="12" value=<%= rg%> ></center></td>
	</tr>
	<tr>
		<td><face="arial" size="12"><center><label data-bind="text: cnh"></label></><br><INPUT TYPE="text" name="cnh" id="cnh" maxlength="11" value=<%= cnh%> ></center></td>
		<td><face="arial" size="12"><center><label data-bind="text: catcnh"></label></><br><INPUT TYPE="text" name="catcnh" maxlength="2" VALUE=<%= catcnh%> ></center></td>
		<td><face="arial" size="12"><center><label data-bind="text: estadocnh"></label></><br><INPUT TYPE="text" name="estemcnh" maxlength="15" VALUE="<%= estadocnh%>" ></center></td>
	</tr>
	<tr>
		<td><face="arial" size="12"><center><label data-bind="text: emiscnh"></label></><br><INPUT TYPE="text" name="dataemcnh" id="dataemcnh" maxlength="10" value=<%= emiscnh%> ></center></td>
		<td><face="arial" size="12"><center><label data-bind="text: valcnh"></label></><br><INPUT TYPE="text" name="datavalcnh" id="datavalcnh" maxlength="10" value=<%= valcnh%> ></center></td>
	</tr>
	</table>
	
	<br>
	<center>	<INPUT type="submit" value= "OK" data-bind="text: Enviar">
				<input type='button' onclick='javascript:history.back()' value='Voltar' name='Voltar' data-bind="text: Enviar"></center>
</form>

</body>
</html>