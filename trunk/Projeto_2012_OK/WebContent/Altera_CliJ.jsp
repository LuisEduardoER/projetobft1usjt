<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
	String user = request.getParameter("user");
	String agencia = request.getParameter("agencia");
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Altera Pessoa Jur�dica</title>

</head>
<body text="#000000">

<form name="form1" id="form1" action = "Altera_CliJ_Banco2.jsp?user=<%= user%>&agencia=<%=agencia%>&razao=<%=razao%>&cnpj=<%=cnpj%>&inscri=<%=inscri%>" method = "post">	


	<h1><P align="center">Altera��o de Pessoa Jur�dica</h1></P>
	<face="arial" size="20"><center>Dados B�sico</center><P>
	<center><table border = "0">
	<tr>
		<td COLSPAN = 2 ><face="arial" size="12"><center>Nome Fantasia</><br><INPUT TYPE="text" name="nome" size="40" VALUE="<%= nome%>"></center></td>
		<td COLSPAN = 2><face="arial" size="12"><center>Telefone</><br><INPUT TYPE="text" name="fone" maxlength="11" Value=<%= fone%> ></center></td>
		<td COLSPAN = 2><face="arial" size="12"><center>E-mail</><br><INPUT TYPE="text" name="email" size="40" VALUE=<%= email%>></center></td>
	</tr>
	<tr>
		<td COLSPAN = 2 ><face="arial" size="12"><center>Raz�o Social</><br><INPUT TYPE="text" name="razao" size="40" VALUE="<%= razao%>"disabled></center></td>
		<td COLSPAN = 2 ><face="arial" size="12"><center>CNPJ</><br><INPUT TYPE="text" name="cnpj" maxlength="15" size="15" VALUE=<%= cnpj%> disabled></center></td>
		<td COLSPAN = 2 ><face="arial" size="12"><center>Inscri��o Estadual</><br><INPUT TYPE="text" name="inscri" maxlength="40" size="40" VALUE=<%= inscri%> disabled></center></td>
	</tr>
	</table>
	<br><br>
	<face="arial" size="20"><center>Condutor</center><P>
	<center></center><table border = "0">
	<tr>
		<td><face="arial" size="12"><center>Nome</><br><INPUT TYPE="text" name="nomec" size="40" VALUE="<%= nomecond%>" ></center></td>
		<td><face="arial" size="12"><center>CPF</><br><INPUT TYPE="text" name="cpf" id="cpf" maxlength="16" value=<%= cpf%> ></center></td>
		<td><face="arial" size="12"><center>RG</><br><INPUT TYPE="text" name="rg" id="rg" maxlength="12" value=<%= rg%> ></center></td>
	</tr>
	<tr>
		<td><face="arial" size="12"><center>CNH</><br><INPUT TYPE="text" name="cnh" id="cnh" maxlength="11" value=<%= cnh%> ></center></td>
		<td><face="arial" size="12"><center>Categoria CNH</><br><INPUT TYPE="text" name="catcnh" maxlength="2" VALUE=<%= catcnh%> ></center></td>
		<td><face="arial" size="12"><center>Estado Emissor</><br><INPUT TYPE="text" name="estemcnh" maxlength="15" VALUE="<%= estadocnh%>" ></center></td>
	</tr>
	<tr>
		<td><face="arial" size="12"><center>Data de Emiss�o</><br><INPUT TYPE="text" name="dataemcnh" id="dataemcnh" maxlength="10" value=<%= emiscnh%> ></center></td>
		<td><face="arial" size="12"><center>Data de Validade</><br><INPUT TYPE="text" name="datavalcnh" id="datavalcnh" maxlength="10" value=<%= valcnh%> ></center></td>
	</tr>
	</table>
	
	<br>
	<center>	<INPUT type="submit" value= "OK">
				<input type='button' onclick='javascript:history.back()' value='Voltar' name='Voltar'></center>
</form>

</body>
</html>