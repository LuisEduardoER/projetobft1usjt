<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
	String user = request.getParameter("user");
	String agencia = request.getParameter("agencia");
	String consulta = request.getParameter("consulta");
	String pass = request.getParameter("pass");
	String cpf = request.getParameter("cpf");
	String fone = request.getParameter("fone");
	String email = request.getParameter("email");
	String rg = request.getParameter("rg");
	String cnh = request.getParameter("cnh");
	String catcnh = request.getParameter("catcnh");
	String estadocnh = request.getParameter("estadocnh");
	String datacnh = request.getParameter("datacnh");
	String valcnh = request.getParameter("valcnh");
	String nasc = request.getParameter("nasc");
	String sexo = request.getParameter("sexo");
	String nome = request.getParameter("nome");
%>   
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Excluir Pessoa Física</title>
<head>
<body text="#000000">
<%
if(consulta.equals("Sim"))
	{
%>
<form name="form1" id="form1" action = "Deleta_CliF_Banco2.jsp?user=<%= user%>&agencia=<%=agencia%>&estrangeiro=<%=consulta%>&cpf=<%=cpf%>&pass=<%=pass%>" method = "post">	


	<h1><P align="center">Exclusão de Pessoa Física</h1></P>
	<face="arial" size="20"><center>Dados Básicos</center><P>
	<center><table border = "0">
	<tr>
		<td COLSPAN = 2 ><face="arial" size="12"><center>Nome</><br><INPUT TYPE="text" name="nome" size="40" VALUE="<%= nome%>" disabled></center></td>
		<td COLSPAN = 2><face="arial" size="12"><center>Telefone</><br><INPUT TYPE="text" name="fone" maxlength="11" VALUE="<%= fone%>" disabled></center></td>
		<td COLSPAN = 2><face="arial" size="12"><center>E-mail</><br><INPUT TYPE="text" name="email" size="40" VALUE="<%= email%>" disabled></center></td>
	</tr>
	<tr>
		<td class="texto" COLSPAN = 2 ><face="arial" size="12"><center>Sexo</><br>
		<%if(sexo.equals("Masculino"))
			{
			%>
			<input type="radio" name="sexo" value="Masculino" checked disabled>Masculino</>
			<input type="radio" name="sexo" value="Feminino" disabled>Feminino</>
			<%}
			  else
			  {
			   %>
			  	<input type="radio" name="sexo" value="Masculino" disabled>Masculino</>
				<input type="radio" name="sexo" value="Feminino" checked disabled>Feminino</>
			<%} %>
		</td>
		<td></td>
		<td COLSPAN = 2 ><face="arial" size="12"><center>Data de Nascimento</><br>
			<INPUT TYPE="text" name="datanasc" maxlength="10" VALUE="<%= nasc%>" disabled></center>
		</td>
	</tr>
	<tr>
		<td></td>
		<td class="texto" COLSPAN = 2 ><face="arial" size="12"><br><center>Estrangeiro</><br>
			<%if(consulta.equals("Sim"))
				{
				%>
				<input type="radio" name="estrangeiro" id="estraS" value="Sim" checked disabled>Sim</>
				<input type="radio" name="estrangeiro" id="estraN" value="Não" disabled>Não</>
			<%}
			  else
			  {
			  %>
				<input type="radio" name="estrangeiro" id="estraS" value="Sim" disabled>Sim</>
				<input type="radio" name="estrangeiro" id="estraN" value="Não" checked disabled>Não</>
			<%} %>
		</td>
	</tr>
	</table>
	<br><br>
	<face="arial" size="20"><center>Documentos</center><P>
	<center></center><table border = "0">
	<tr>
		<td><face="arial" size="12"><center>CPF</><br><INPUT class="campo" TYPE="text" name="cpf" id="cpf" maxlength="16" disabled></center></td>
		<td><face="arial" size="12"><center>Passaporte</><br><INPUT class="campo" TYPE="text" name="pass" id="pass" maxlength="20" VALUE="<%= pass%>" disabled></center></td>
		<td></td>
		<td></td>
		<td></td>
		<td><face="arial" size="12"><center>CNH</><br><INPUT TYPE="text" name="cnh" id="cnh" maxlength="11" VALUE="<%= cnh%>" disabled></center></td>
		<td><face="arial" size="12"><center>Categoria CNH</><br><INPUT TYPE="text" name="catcnh" maxlength="2" VALUE="<%= catcnh%>" disabled></center></td>
		<td><face="arial" size="12"><center>Estado Emissor</><br><INPUT TYPE="text" name="estemcnh" maxlength="15" VALUE="<%= estadocnh%>" disabled></center></td>
	</tr>
	<tr>
		<td><face="arial" size="12"><center>RG</><br><INPUT class="campo" TYPE="text" name="rg" id="rg" maxlength="12" disabled></center></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td><face="arial" size="12"><center>Data de Emissão</><br><INPUT TYPE="text" name="dataemcnh" id="dataemcnh" maxlength="10" VALUE="<%= datacnh%>" disabled></center></td>
		<td><face="arial" size="12"><center>Data de Validade</><br><INPUT TYPE="text" name="datavalcnh" id="datavalcnh" maxlength="10" VALUE="<%= valcnh%>" disabled></center></td>
	</tr>
	</table>
	
	<br>
	<center>	<face="arial" size="12"><center>Deseja Excluir Esse Cliente ?</><BR><BR>
				<INPUT type="submit" value= "Sim">
				<input type='button' onclick='javascript:history.back()' value='Voltar' name='Voltar'></center>
</form>




<%
}
else
{%>





<form name="form1" id="form1" action = "Deleta_CliF_Banco2.jsp?user=<%= user%>&agencia=<%=agencia%>&estrangeiro=<%=consulta%>&cpf=<%=cpf%>&pass=<%=pass%>" method = "post">	


	<h1><P align="center">Exclusão de Pessoa Física</h1></P>
	<face="arial" size="20"><center>Dados Básicos</center><P>
	<center><table border = "0">
	<tr>
		<td COLSPAN = 2 ><face="arial" size="12"><center>Nome</><br><INPUT TYPE="text" name="nome" size="40" VALUE="<%= nome%>" disabled></center></td>
		<td COLSPAN = 2><face="arial" size="12"><center>Telefone</><br><INPUT TYPE="text" name="fone" maxlength="11" VALUE="<%= fone%>" disabled></center></td>
		<td COLSPAN = 2><face="arial" size="12"><center>E-mail</><br><INPUT TYPE="text" name="email" size="40" VALUE="<%= email%>" disabled></center></td>
	</tr>
	<tr>
		<td class="texto" COLSPAN = 2 ><face="arial" size="12"><center>Sexo</><br>
		<%if(sexo.equals("Masculino"))
			{
			%>
			<input type="radio" name="sexo" value="Masculino" checked disabled>Masculino</>
			<input type="radio" name="sexo" value="Feminino" disabled>Feminino</>
			<%}
			  else
			  {
			   %>
			  	<input type="radio" name="sexo" value="Masculino" disabled>Masculino</>
				<input type="radio" name="sexo" value="Feminino" checked disabled>Feminino</>
			<%} %>
		</td>
		<td></td>
		<td COLSPAN = 2 ><face="arial" size="12"><center>Data de Nascimento</><br>
			<INPUT TYPE="text" name="datanasc" maxlength="10" VALUE="<%= nasc%>" disabled></center>
		</td>
	</tr>
	<tr>
		<td></td>
		<td class="texto" COLSPAN = 2 ><face="arial" size="12"><br><center>Estrangeiro</><br>
			<%if(consulta.equals("Sim"))
				{
				%>
				<input type="radio" name="estrangeiro" id="estraS" value="Sim" checked disabled>Sim</>
				<input type="radio" name="estrangeiro" id="estraN" value="Não" disabled>Não</>
			<%}
			  else
			  {
			  %>
				<input type="radio" name="estrangeiro" id="estraS" value="Sim" disabled>Sim</>
				<input type="radio" name="estrangeiro" id="estraN" value="Não" checked disabled>Não</>
			<%} %>
		</td>
	</tr>
	</table>
	<br><br>
	<face="arial" size="20"><center>Documentos</center><P>
	<center></center><table border = "0">
	<tr>
		<td><face="arial" size="12"><center>CPF</><br><INPUT class="campo" TYPE="text" name="cpf" id="cpf" maxlength="16" VALUE="<%= cpf%>" disabled></center></td>
		<td><face="arial" size="12"><center>Passaporte</><br><INPUT class="campo" TYPE="text" name="pass" id="pass" maxlength="20" disabled></center></td>
		<td></td>
		<td></td>
		<td></td>
		<td><face="arial" size="12"><center>CNH</><br><INPUT TYPE="text" name="cnh" id="cnh" maxlength="11" VALUE="<%= cnh%>" disabled></center></td>
		<td><face="arial" size="12"><center>Categoria CNH</><br><INPUT TYPE="text" name="catcnh" maxlength="2" VALUE="<%= catcnh%>" disabled></center></td>
		<td><face="arial" size="12"><center>Estado Emissor</><br><INPUT TYPE="text" name="estemcnh" maxlength="15" VALUE="<%= estadocnh%>" disabled></center></td>
	</tr>
	<tr>
		<td><face="arial" size="12"><center>RG</><br><INPUT class="campo" TYPE="text" name="rg" id="rg" maxlength="12" VALUE="<%= rg%>" disabled></center></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td><face="arial" size="12"><center>Data de Emissão</><br><INPUT TYPE="text" name="dataemcnh" id="dataemcnh" maxlength="10" VALUE="<%= datacnh%>" disabled></center></td>
		<td><face="arial" size="12"><center>Data de Validade</><br><INPUT TYPE="text" name="datavalcnh" id="datavalcnh" maxlength="10" VALUE="<%= valcnh%>" disabled></center></td>
	</tr>
	</table>
	
	<br>
	<center>	<face="arial" size="12"><center>Deseja Excluir Esse Cliente ?</><BR><BR>
				<INPUT type="submit" value= "Sim">
				<input type='button' onclick='javascript:history.back()' value='Não' name='Não'></center>
</form>
<%} %>
</body>
</html>