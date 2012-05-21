<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
    
<%
	String user = request.getParameter("user");
	String agencia = request.getParameter("agencia");
	String cor = request.getParameter("cor");
	String chassi = request.getParameter("chassi");
	String placa = request.getParameter("placa");
	String cidade = request.getParameter("cidade");
	String km = request.getParameter("km");
	String estado = request.getParameter("estado");
	String modelo = request.getParameter("modelo");
	String kmcontrolado = request.getParameter("kmcontrolado");
	String kmlivre = request.getParameter("kmlivre");
	String grupo = request.getParameter("grupo");
	String fabricante = request.getParameter("fabricante");
	String diaria = request.getParameter("diaria");
	String codigo = request.getParameter("codigo");
	String situacao = request.getParameter("situacao");
	
	try{
	
		Class.forName("org.postgresql.Driver");

		Connection connection = DriverManager.getConnection(
			"jdbc:postgresql://localhost:5432/3ASIN", 	//banco de dados 
			"postgres",	 									//usuario
			"postgre");									//senha
		
		String sql = "delete from veiculo where codigo='"+codigo+"'";
		Statement stm = connection.createStatement();
		stm.executeUpdate(sql);
%>  

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
<%
	
		connection.close();
	
		javax.swing.JOptionPane.showMessageDialog(null,"Veículo Excluido com Sucesso!");
		response.sendRedirect("Menu_Principal.jsp?user="+user+"&agencia="+agencia);
		} 
		catch (ClassNotFoundException e) 
		{
			javax.swing.JOptionPane.showMessageDialog(null,"Erro de Classe!");
			e.printStackTrace();
		}
		catch(SQLException e)
		{
			javax.swing.JOptionPane.showMessageDialog(null,"Erro de SQL!");
			e.printStackTrace();
		}
%>
</body>
</html>