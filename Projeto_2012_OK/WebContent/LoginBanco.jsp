<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
    
<%

	String user = request.getParameter("user");
	String senha = request.getParameter("pass");
	String agencia = request.getParameter("agencias");

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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
<%
		
	if(rs.next())
	{
		String loginok = rs.getString("login");
		String senh = rs.getString("senha");
		javax.swing.JOptionPane.showMessageDialog(null,"Login Efetuado com sucesso!!!");
		
		response.sendRedirect("Menu_Principal.jsp?user="+loginok+"&agencia="+agencia);
		
	}
	else
	{
		javax.swing.JOptionPane.showMessageDialog(null,"Login/Senha Incorretos!!");
		response.sendRedirect("Login.jsp");
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