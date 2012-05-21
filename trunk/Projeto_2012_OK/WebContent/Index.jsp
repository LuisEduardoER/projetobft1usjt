<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Seleção de Idiomas</title>
</head>
	<body text="#000000"><HR WIDTH="75%">
	<h1><P align="center">Seleção de Idiomas</h1></P>
	<face="arial" size="12">
	<th><center>Selecione o Idioma</th><br><br>
	<%@ page language="java" 
		import="java.util.*"
		import="javax.swing.*"
		import="java.util.ResourceBundle"
		import="java.util.Locale"
	 %>
	<%
	ResourceBundle bn = null;
	String rad = request.getParameter("radio");
	String combo = request.getParameter("agencias");
	
	if(rad != null)
	{
		switch(Integer.parseInt(rad))
        {
            case 1:
            	response.sendRedirect("Login.jsp?ling=br");
            break;
            case 2:
            	response.sendRedirect("Login.jsp?ling=us");
            break;
            case 3:
            	response.sendRedirect("Login.jsp?ling=es");
            break;
            default:
            	
        }
	 	
	}
	else
	{
	%>
	
	<form id="formSelecaoIdioma" action="Index.jsp" method = "post">
	
	<table align="center" border=0>
	<tr>
		<td><img src="imagens/BR.png" width=80 height=80><center><br><input type="radio" name="radio" value="1"><br>Português</td><td></td>
		<td><img src="imagens/EUA.gif" width=80 height=80><center><br><input type="radio" name="radio" value="2"><br>English</td><td></td>
		<td><img src="imagens/ESP.gif" width=80 height=80><center><br><input type="radio" name="radio" value="3"><br>Español</td>
	</tr>
	</table>
	
	
						  
	<BR><BR><center><INPUT id="btnEntrar" name="Entrar" value="OK" type="submit" />
			        <INPUT id="btnSair" name="Sair" value="Sair" type="submit" onclick="window.close()" /></center>
	</form>
	
	<% } %>
	
	</body><HR WIDTH="75%">
</html>