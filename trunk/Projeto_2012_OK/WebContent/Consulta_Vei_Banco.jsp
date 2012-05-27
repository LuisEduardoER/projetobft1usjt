<%@page import="javax.swing.JOptionPane"%>
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
	String consulta = request.getParameter("consulta");
	String chassi1 = request.getParameter("chassi");
	String placa1 = request.getParameter("placa");
	String modelo1 = request.getParameter("modelo");
	String codigo1 = request.getParameter("codigo");
	String grupo1 = request.getParameter("grupo2");
	String fabricante1 = request.getParameter("fabricante2");
	
	
try{
	
	Class.forName("org.postgresql.Driver");

	Connection connection = DriverManager.getConnection(
			"jdbc:postgresql://localhost:5432/3ASIN", 	//banco de dados 
			"postgres",	 									//usuario
			"postgre");									//senha

	String sql = "";
	
				
	if(consulta.equals("chassi"))
	{
		sql = "select * from Veiculo where chassi ILIKE '"+chassi1+"'";	
	}
	else if(consulta.equals("placa"))
	{
		sql = "select * from Veiculo where placa ILIKE '"+placa1+"'";	
	}
	else if(consulta.equals("fabricante1"))
	{
		sql = "select * from Veiculo where fabricante ILIKE '"+fabricante1+"'";	
	}
	else if(consulta.equals("modelo"))
	{
		sql = "select * from Veiculo where modelo ILIKE '"+modelo1+"'";
	}	
	else if(consulta.equals("grupo1"))
	{
		sql = "select * from Veiculo where grupo ILIKE '"+grupo1+"'";	
	}
	else
	{
		sql = "select * from Veiculo where codigo= "+codigo1+"";	
	}
	
	Statement stm = connection.createStatement();
	ResultSet rs = stm.executeQuery(sql);
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
	int codigo = rs.getInt("codigo");
	String chassi = rs.getString("chassi");
	String placa = rs.getString("placa");
	String modelo = rs.getString("modelo");
	int km = rs.getInt("km");
	String grupo = rs.getString("grupo");
	String fabricante = rs.getString("fabricante");
	String estado = rs.getString("estado");
	String cidade = rs.getString("cidade");
	String cor = rs.getString("cor");
	String kmcontrolado = rs.getString("tarifalockm");
	String kmlivre = rs.getString("tarifaloclivre");
	String diaria = rs.getString("diaria");
	String situacao = rs.getString("sitvei");
	
	response.sendRedirect("Consulta_Vei.jsp?user="+user+"&agencia="+agencia+"&codigo="+codigo+"&chassi="+chassi+"&placa="+placa+"&modelo="+modelo+
			"&km="+km+"&grupo="+grupo+"&fabricante="+fabricante+"&estado="+estado+"&cidade="+cidade+"&cor="+cor+"&kmcontrolado="+kmcontrolado+
			"&kmlivre="+kmlivre+"&diaria="+diaria+"&situacao="+situacao+"&idi="+idi);
	
}
else
{
	javax.swing.JOptionPane.showMessageDialog(null,"Message9");
	response.sendRedirect("Consulta_Veiculo.jsp?user="+user+"&agencia="+agencia+"&idi="+idi);
}

connection.close();
} 
catch (ClassNotFoundException e) 
{
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