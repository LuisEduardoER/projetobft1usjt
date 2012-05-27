<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
    
<%
	String user = request.getParameter("user");
	String idi = request.getParameter("idi");
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

	<script src="idiomas\Portugues\Pt.js" type="text/javascript"></script>
    <script src="idiomas\English\Eng.js" type="text/javascript"></script>
    <script src="idiomas\Espanol\Es.js" type="text/javascript"></script>
    <script src="idiomas\knockout-2.0.0.js" type="text/javascript"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body text="#000000" onload="<%=idi%>">
<%
	
		connection.close();
	
		javax.swing.JOptionPane.showMessageDialog(null,"Message13");
		response.sendRedirect("Menu_Principal.jsp?user="+user+"&agencia="+agencia+"&idi="+idi);
		} 
		catch (ClassNotFoundException e) 
		{
			javax.swing.JOptionPane.showMessageDialog(null,"Message5");
			e.printStackTrace();
		}
		catch(SQLException e)
		{
			javax.swing.JOptionPane.showMessageDialog(null,"Message5");
			e.printStackTrace();
		}
%>
</body>
</html>