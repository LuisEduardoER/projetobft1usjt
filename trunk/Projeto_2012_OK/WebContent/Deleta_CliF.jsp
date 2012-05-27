<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
	String user = request.getParameter("user");
	String idi = request.getParameter("idi");
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
	String loc = request.getParameter("loc");
%>   
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<script src="idiomas\Portugues\Pt.js" type="text/javascript"></script>
    <script src="idiomas\English\Eng.js" type="text/javascript"></script>
    <script src="idiomas\Espanol\Es.js" type="text/javascript"></script>
    <script src="idiomas\knockout-2.0.0.js" type="text/javascript"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Excluir Pessoa Física</title>
<head>
<body text="#000000" onload="<%=idi%>">
<%
if(consulta.equals("Sim"))
	{
%>
<form name="form1" id="form1" action = "Deleta_CliF_Banco2.jsp?user=<%= user%>&agencia=<%=agencia%>&estrangeiro=<%=consulta%>&cpf=<%=cpf%>&pass=<%=pass%>&idi=<%=idi%>" method = "post">	


	<h1><P align="center"><label data-bind="text: delpf"></label></h1></P>
	<face="arial" size="20"><center><label data-bind="text: dadosbasicos"></label></center><P>
	<center><table border = "0">
	<tr>
		<td COLSPAN = 2 ><face="arial" size="12"><center><label data-bind="text: nome"></label></><br><INPUT TYPE="text" name="nome" size="40" VALUE="<%= nome%>" disabled></center></td>
		<td COLSPAN = 2><face="arial" size="12"><center><label data-bind="text: telefone"></label></><br><INPUT TYPE="text" name="fone" maxlength="11" VALUE="<%= fone%>" disabled></center></td>
		<td COLSPAN = 2><face="arial" size="12"><center><label data-bind="text: email"></label></><br><INPUT TYPE="text" name="email" size="40" VALUE="<%= email%>" disabled></center></td>
	</tr>
	<tr>
		<td class="texto" COLSPAN = 2 ><face="arial" size="12"><center><label data-bind="text: sexo"></label></><br>
		<%if(sexo.equals("Masculino"))
			{
			%>
			<input type="radio" name="sexo" value="Masculino" checked disabled><label data-bind="text: masculino"></label></>
			<input type="radio" name="sexo" value="Feminino" disabled><label data-bind="text: feminino"></label></>
			<%}
			  else
			  {
			   %>
			  	<input type="radio" name="sexo" value="Masculino" disabled><label data-bind="text: masculino"></label></>
				<input type="radio" name="sexo" value="Feminino" checked disabled><label data-bind="text: feminino"></label></>
			<%} %>
		</td>
		<td></td>
		<td COLSPAN = 2 ><face="arial" size="12"><center><label data-bind="text: datnasc"></label></><br>
			<INPUT TYPE="text" name="datanasc" maxlength="10" VALUE="<%= nasc%>" disabled></center>
		</td>
	</tr>
	<tr>
		<td></td>
		<td class="texto" COLSPAN = 2 ><face="arial" size="12"><br><center><label data-bind="text: estrangeiro"></label></><br>
			<%if(consulta.equals("Sim"))
				{
				%>
				<input type="radio" name="estrangeiro" id="estraS" value="Sim" checked disabled><label data-bind="text: sim"></label></>
				<input type="radio" name="estrangeiro" id="estraN" value="Não" disabled><label data-bind="text: nao"></label></>
			<%}
			  else
			  {
			  %>
				<input type="radio" name="estrangeiro" id="estraS" value="Sim" disabled><label data-bind="text: sim"></label></>
				<input type="radio" name="estrangeiro" id="estraN" value="Não" checked disabled><label data-bind="text: nao"></label></>
			<%} %>
		</td>
		<td><face size="12"><br><center><label data-bind="text: loc"></label></><br>
			<INPUT TYPE="text" name="loc" VALUE="<%= loc%>" disabled></center>
		</td>
	</tr>
	</table>
	<br><br>
	<face="arial" size="20"><center><label data-bind="text: doc"></label></center><P>
	<center></center><table border = "0">
	<tr>
		<td><face="arial" size="12"><center><label data-bind="text: cpf"></label></><br><INPUT class="campo" TYPE="text" name="cpf" id="cpf" maxlength="16" disabled></center></td>
		<td><face="arial" size="12"><center><label data-bind="text: pass"></label></><br><INPUT class="campo" TYPE="text" name="pass" id="pass" maxlength="20" VALUE="<%= pass%>" disabled></center></td>
		<td></td>
		<td></td>
		<td></td>
		<td><face="arial" size="12"><center><label data-bind="text: cnh"></label></><br><INPUT TYPE="text" name="cnh" id="cnh" maxlength="11" VALUE="<%= cnh%>" disabled></center></td>
		<td><face="arial" size="12"><center><label data-bind="text: catcnh"></label></><br><INPUT TYPE="text" name="catcnh" maxlength="2" VALUE="<%= catcnh%>" disabled></center></td>
		<td><face="arial" size="12"><center><label data-bind="text: estadocnh"></label></><br><INPUT TYPE="text" name="estemcnh" maxlength="15" VALUE="<%= estadocnh%>" disabled></center></td>
	</tr>
	<tr>
		<td><face="arial" size="12"><center><label data-bind="text: rg"></label></><br><INPUT class="campo" TYPE="text" name="rg" id="rg" maxlength="12" disabled></center></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td><face="arial" size="12"><center><label data-bind="text: emiscnh"></label></><br><INPUT TYPE="text" name="dataemcnh" id="dataemcnh" maxlength="10" VALUE="<%= datacnh%>" disabled></center></td>
		<td><face="arial" size="12"><center><label data-bind="text: valcnh"></label></><br><INPUT TYPE="text" name="datavalcnh" id="datavalcnh" maxlength="10" VALUE="<%= valcnh%>" disabled></center></td>
	</tr>
	</table>
	
	<br>
	<center>	<face="arial" size="12"><center><label data-bind="text: delcli"></label></><BR><BR>
				<INPUT type="submit" value= "Sim" data-bind="text: sim">
				<input type='button' onclick='javascript:history.back()' value='Nao' name='Nao' data-bind="text: nao"></center>
</form>




<%
}
else
{%>





<form name="form1" id="form1" action = "Deleta_CliF_Banco2.jsp?user=<%= user%>&agencia=<%=agencia%>&estrangeiro=<%=consulta%>&cpf=<%=cpf%>&pass=<%=pass%>&idi=<%=idi%>" method = "post">	


	<h1><P align="center"><label data-bind="text: delpf"></label></h1></P>
	<face="arial" size="20"><center><label data-bind="text: dadosbasicos"></label></center><P>
	<center><table border = "0">
	<tr>
		<td COLSPAN = 2 ><face="arial" size="12"><center><label data-bind="text: nome"></label></><br><INPUT TYPE="text" name="nome" size="40" VALUE="<%= nome%>" disabled></center></td>
		<td COLSPAN = 2><face="arial" size="12"><center><label data-bind="text: telefone"></label></><br><INPUT TYPE="text" name="fone" maxlength="11" VALUE="<%= fone%>" disabled></center></td>
		<td COLSPAN = 2><face="arial" size="12"><center><label data-bind="text: email"></label></><br><INPUT TYPE="text" name="email" size="40" VALUE="<%= email%>" disabled></center></td>
	</tr>
	<tr>
		<td class="texto" COLSPAN = 2 ><face="arial" size="12"><center><label data-bind="text: sexo"></label></><br>
		<%if(sexo.equals("Masculino"))
			{
			%>
			<input type="radio" name="sexo" value="Masculino" checked disabled><label data-bind="text: masculino"></label></>
			<input type="radio" name="sexo" value="Feminino" disabled><label data-bind="text: feminino"></label></>
			<%}
			  else
			  {
			   %>
			  	<input type="radio" name="sexo" value="Masculino" disabled><label data-bind="text: masculino"></label></>
				<input type="radio" name="sexo" value="Feminino" checked disabled><label data-bind="text: feminino"></label></>
			<%} %>
		</td>
		<td></td>
		<td COLSPAN = 2 ><face="arial" size="12"><center><label data-bind="text: datnasc"></label></><br>
			<INPUT TYPE="text" name="datanasc" maxlength="10" VALUE="<%= nasc%>" disabled></center>
		</td>
	</tr>
	<tr>
		<td></td>
		<td class="texto" COLSPAN = 2 ><face="arial" size="12"><br><center><label data-bind="text: estrangeiro"></label></><br>
			<%if(consulta.equals("Sim"))
				{
				%>
				<input type="radio" name="estrangeiro" id="estraS" value="Sim" checked disabled><label data-bind="text: sim"></label></>
				<input type="radio" name="estrangeiro" id="estraN" value="Não" disabled><label data-bind="text: nao"></label></>
			<%}
			  else
			  {
			  %>
				<input type="radio" name="estrangeiro" id="estraS" value="Sim" disabled><label data-bind="text: sim"></label></>
				<input type="radio" name="estrangeiro" id="estraN" value="Não" checked disabled><label data-bind="text: nao"></label></>
			<%} %>
		</td>
		<td><face size="12"><br><center><label data-bind="text: loc"></label></><br>
			<INPUT TYPE="text" name="loc" VALUE="<%= loc%>" disabled></center>
		</td>
	</tr>
	</table>
	<br><br>
	<face="arial" size="20"><center><label data-bind="text: doc"></label></center><P>
	<center></center><table border = "0">
	<tr>
		<td><face="arial" size="12"><center><label data-bind="text: cpf"></label></><br><INPUT class="campo" TYPE="text" name="cpf" id="cpf" maxlength="16" VALUE="<%= cpf%>" disabled></center></td>
		<td><face="arial" size="12"><center><label data-bind="text: pass"></label></><br><INPUT class="campo" TYPE="text" name="pass" id="pass" maxlength="20" disabled></center></td>
		<td></td>
		<td></td>
		<td></td>
		<td><face="arial" size="12"><center><label data-bind="text: cnh"></label></><br><INPUT TYPE="text" name="cnh" id="cnh" maxlength="11" VALUE="<%= cnh%>" disabled></center></td>
		<td><face="arial" size="12"><center><label data-bind="text: catcnh"></label></><br><INPUT TYPE="text" name="catcnh" maxlength="2" VALUE="<%= catcnh%>" disabled></center></td>
		<td><face="arial" size="12"><center><label data-bind="text: estadocnh"></label></><br><INPUT TYPE="text" name="estemcnh" maxlength="15" VALUE="<%= estadocnh%>" disabled></center></td>
	</tr>
	<tr>
		<td><face="arial" size="12"><center><label data-bind="text: rg"></label></><br><INPUT class="campo" TYPE="text" name="rg" id="rg" maxlength="12" VALUE="<%= rg%>" disabled></center></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td><face="arial" size="12"><center><label data-bind="text: emiscnh"></label></><br><INPUT TYPE="text" name="dataemcnh" id="dataemcnh" maxlength="10" VALUE="<%= datacnh%>" disabled></center></td>
		<td><face="arial" size="12"><center><label data-bind="text: valcnh"></label></><br><INPUT TYPE="text" name="datavalcnh" id="datavalcnh" maxlength="10" VALUE="<%= valcnh%>" disabled></center></td>
	</tr>
	</table>
	
	<br>
	<center>	<face="arial" size="12"><center><label data-bind="text: delcli"></label></><BR><BR>
				<INPUT type="submit" value= "Sim" data-bind="text: sim">
				<input type='button' onclick='javascript:history.back()' value='Nao' name='Nao' data-bind="text: nao"></center>
</form>
<%} %>
</body>
</html>