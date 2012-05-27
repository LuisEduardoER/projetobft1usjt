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
	String situacao = "Disponível";
	
	try{
	
		Class.forName("org.postgresql.Driver");

		Connection connection = DriverManager.getConnection(
			"jdbc:postgresql://localhost:5432/3ASIN", 	//banco de dados 
			"postgres",	 									//usuario
			"postgre");									//senha
			
		String sql0 = "select max(codigo) from veiculo";
		Statement stm = connection.createStatement();
		ResultSet rs = stm.executeQuery(sql0);
		String indice = "";
		int codigo = 0;
		if(rs.next())
		{
			indice = rs.getString(1);
			if(indice==null)
			{
				codigo=1;
			}
			else
			{
				codigo = rs.getInt(1) + 1;
			}
		
		}	
			
		String sql = "insert into veiculo (codigo,cor,chassi,placa,cidade,km,estado,modelo,tarifalockm,tarifaloclivre,grupo,fabricante,diaria,sitvei) values ('"+codigo+"','"+cor+"','"+chassi+"','"+placa+"','"+cidade+"','"+km+"','"+estado+"','"+modelo+"','"+kmcontrolado+"','"+kmlivre+"','"+grupo+"','"+fabricante+"','"+diaria+"','"+situacao+"')";
		stm = connection.createStatement();
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
	
		javax.swing.JOptionPane.showMessageDialog(null,"Message11");
		response.sendRedirect("Consulta_Vei_Banco.jsp?user="+user+"&agencia="+agencia+"&idi="+idi+"&consulta=codigo&codigo="+codigo);
		} 
		catch (ClassNotFoundException e) 
		{
			javax.swing.JOptionPane.showMessageDialog(null,"Message5");
			%>
				<script>javascript:history.back();</script>
			<%
			e.printStackTrace();
		}
		catch(SQLException e)
		{
			javax.swing.JOptionPane.showMessageDialog(null,"Message5");
			%>
				<script>javascript:history.back();</script>
			<%
			e.printStackTrace();
		}
%>
</body>
</html>