<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
	String idi = request.getParameter("idi");
 %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<script src="idiomas\Portugues\Pt.js" type="text/javascript"></script>
    <script src="idiomas\English\Eng.js" type="text/javascript"></script>
    <script src="idiomas\Espanol\Es.js" type="text/javascript"></script>
    <script src="idiomas\knockout-2.0.0.js" type="text/javascript"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Login</title>
</head>

<body text="#000000" onload="<%=idi%>">



<%
		String nome = request.getParameter("user");
		String senha = request.getParameter("pass");
		
		if (nome != null  && nome != "")
		{
			
	%>
	
		<% 
			response.sendRedirect("LoginBanco.jsp");
			
		%>
	
	<% 
		}
		else
		{
	%>
	
	<form name="form1" id="form1" action = "LoginBanco.jsp" method = "post"> 
	<br></br>
	
	<h1><P face="arial" align="center"><label data-bind="text: login"></label></h1></P>
		<center><table border = 0>
			<tr rowspan = 2>
				<td><img src = "imagens/cadeado.png" width=150 height=150></td>
				<td></td>
				<td><face="arial" size="16"><center><label data-bind="text: usuario"></label></center></><br> 
					<INPUT type="text" name="user"><br><br>
					<face="arial" size="16"><center><label data-bind="text: senha"></label></><br> 
					<INPUT type="password" name="pass"></center></td>	
			</tr>
		</table>
		<br>
		<face="arial" size="12"><label data-bind="text: agencia"></label></><center><br>
						  <SELECT NAME="agencias">
						  <OPTION >mooca7367
						  <OPTION >florianopolis035
						  </SELECT>
		<br><br>
		<center><INPUT type="submit" value= "OK" data-bind="text: Enviar" />
				<INPUT type="reset" value= "Clear" data-bind="text: Limpar" /></center>
	</form>
	
		
		
	<%} //end else %>
	

</body>
</html>