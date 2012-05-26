<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
    
<%

	String idi = request.getParameter("idi");
	String user = request.getParameter("user");
	String senha = request.getParameter("pass");
	String agencia = request.getParameter("agencias");
	String mes1 = "";
	String mes2 = "";

try{
	
	Class.forName("org.postgresql.Driver");

	Connection connection = DriverManager.getConnection(
			"jdbc:postgresql://localhost:5432/3ASIN", 	//banco de dados 
			"postgres",	 									//usuario
			"postgre");									//senha
			
	
	String sql = "select * from login where login ILIKE '"+user+"' and senha='"+senha+"'";
	Statement stm = connection.createStatement();
	ResultSet rs = stm.executeQuery(sql);
	String loginn;
%>  

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<script src="idiomas\Portugues\Pt.js" type="text/javascript"></script>
    <script src="idiomas\English\Eng.js" type="text/javascript"></script>
    <script src="idiomas\Espanol\Es.js" type="text/javascript"></script>
    <script src="idiomas\knockout-2.0.0.js" type="text/javascript"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body text="#000000" onload="<%=idi%>">
<%
	if(rs.next())
	{
		String loginok = rs.getString("login");
		String senh = rs.getString("senha");
		javax.swing.JOptionPane.showMessageDialog(null,"Message1");
		
		response.sendRedirect("Menu_Principal.jsp?user="+loginok+"&agencia="+agencia+"&idi="+idi);
		
	}
	else
	{
		javax.swing.JOptionPane.showMessageDialog(null,"Message2");
		response.sendRedirect("Login.jsp?idi="+idi);
	}

	connection.close();
	} 
	catch (ClassNotFoundException e) 
	{
		e.printStackTrace();
	}
	catch(SQLException e)
	{
		e.printStackTrace();
	}
%>
</body>
</html>