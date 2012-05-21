<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
 	String ling = request.getParameter("ling");
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Login</title>
</head>
<body>
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
	
	<h1><P face="arial" align="center">Login</h1></P>
		<center><table border = 0>
			<tr rowspan = 2>
				<td><img src = "imagens/cadeado.png" width=150 height=150></td>
				<td></td>
				<td><face="arial" size="16"><center>Usuário</center></><br> 
					<INPUT type="text" name="user"><br><br>
					<face="arial" size="16"><center>Senha</><br> 
					<INPUT type="password" name="pass"></center></td>	
			</tr>
		</table>
		<br>
		<face="arial" size="12">Agência</><center><br>
						  <SELECT NAME="agencias">
						  <OPTION >mooca7367
						  <OPTION >florianopolis035
						  </SELECT>
		<br><br>
		<center><INPUT type="submit" value= "OK">
				<INPUT type="reset" value= "Clear"></center>
	</form>
	
		
		
	<%} //end else %>
	

</body>
</html>