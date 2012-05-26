<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<script src="idiomas\Portugues\Pt.js" type="text/javascript"></script>
    <script src="idiomas\English\Eng.js" type="text/javascript"></script>
    <script src="idiomas\Espanol\Es.js" type="text/javascript"></script>
    <script src="idiomas\knockout-2.0.0.js" type="text/javascript"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Seleção de Idioma</title>

</head>
	<body text="#000000" onload="pageIndexChangePt()"><HR WIDTH="75%">
	<h1><P align="center"><label data-bind="text: selecaoIdioma"></label></h1></P>
	<face="arial" size="12">
	<th><center><label data-bind="text: selecionaIdioma"></label></th><br><br>
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
	String idi = null;
	
	if(rad != null)
	{
		switch(Integer.parseInt(rad))
        {
            case 1:
            	response.sendRedirect("Login.jsp?idi=1");
            break;
            case 2:
            	response.sendRedirect("Login.jsp?idi=2");
            break;
            case 3:
            	response.sendRedirect("Login.jsp?idi=3");
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
		<td><center><img src="imagens\BR.png" width="80" height="80"><br>
			<center><input type="radio" name="radio" value="1" onclick="pageIndexChangePt()"><br><label data-bind="text: btnPortugues"></label>
		</td>
		
		<td></td>
		
		<td><center><img src="imagens\EUA.gif" width="80" height="80"onclick="pageIndexChangeEn()" ><br>
			<center><input type="radio" name="radio" value="2" onclick="pageIndexChangeEn()"><br><label data-bind="text: btnIngles"></label>
		</td>
		
		<td></td>
		
		<td><center><img src="imagens\ESP.gif" width="80" height="80"onclick="pageIndexChangeEs()" ><br>
			<center><input type="radio" name="radio" value="3" onclick="pageIndexChangeEs()"><br><label data-bind="text: btnEspanhol"></label>
		</td>
	</tr>
	</table>
	
	
						  
	<BR><BR><center><INPUT id="btnEntrar" name="Entrar" value="OK" type="submit" data-bind="text: Enviar" />
			        <INPUT id="btnSair" name="Sair" value="Sair" type="submit" onclick="window.close()" data-bind="text: Cancelar" /></center>
	</form>
	
	<% } %>
	
	</body><HR WIDTH="75%">
</html>