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
	String passaporte1 = request.getParameter("pass");
	String cpf1 = request.getParameter("cpf");
	String passaporte = "";
	String cpf = "";
	String fone = "";
	String email = "";
	String rg = "";
	String cnh = "";
	String catcnh = "";
	String estadocnh = "";
	String datacnh = "";
	String valcnh = "";
	String nasc = "";
	String sexo = "";
	String nome = "";
	
try{
	
	Class.forName("org.postgresql.Driver");

	Connection connection = DriverManager.getConnection(
			"jdbc:postgresql://localhost:5432/3ASIN", 	//banco de dados 
			"postgres",	 									//usuario
			"postgre");									//senha

	String sql = "";
	String sql2 = "";
	
				
	if(consulta.equals("Sim"))
	{
		sql = "select * from cliente where passaporte ILIKE '"+passaporte1+"'";
		sql2 = "select * from cliente_es where passaporte ILIKE '"+passaporte1+"'";
	}
	else if(consulta.equals("Nao"))
	{
		sql = "select * from cliente where cpf ILIKE '"+cpf1+"'";
		sql2 = "select * from cliente_pf where cpf ILIKE '"+cpf1+"'";	
	}
	
	Statement stm = connection.createStatement();
	ResultSet rs1 = stm.executeQuery(sql);
	Statement stm2 = connection.createStatement();
	ResultSet rs2 = stm2.executeQuery(sql2);
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

if(rs1.next())
{
	if(consulta.equals("Sim"))
	{
		passaporte = rs1.getString("passaporte");
		fone = rs1.getString("telefone");
		email = rs1.getString("email");
	}
	
	else
	{
		cpf = rs1.getString("cpf");
		fone = rs1.getString("telefone");
		email = rs1.getString("email");
	}
	
}
else
{
	javax.swing.JOptionPane.showMessageDialog(null,"Message3");
}

if(rs2.next())
{
	if(consulta.equals("Sim"))
	{
		cnh = rs2.getString("habilitacao");
		catcnh = rs2.getString("categoriacnh");
		estadocnh = rs2.getString("estemiscnh");
		datacnh = rs2.getString("dataemiscnh");
		valcnh = rs2.getString("validadecnh");
		nasc = rs2.getString("datanasc");
		sexo = rs2.getString("sexo");
		nome = rs2.getString("nome");
	}
	
	else
	{
		rg = rs2.getString("rg");
		cnh = rs2.getString("habilitacao");
		catcnh = rs2.getString("categoriacnh");
		estadocnh = rs2.getString("estemiscnh");
		datacnh = rs2.getString("dataemiscnh");
		valcnh = rs2.getString("validadecnh");
		nasc = rs2.getString("datanasc");
		sexo = rs2.getString("sexo");
		nome = rs2.getString("nome");
	}
	
	response.sendRedirect("Altera_CliF.jsp?user="+user+"&agencia="+agencia+"&consulta="+consulta+"&cpf="+cpf+"&rg="+rg+"&pass="+passaporte+"&fone="+fone+
			"&email="+email+"&cnh="+cnh+"&catcnh="+catcnh+"&estadocnh="+estadocnh+"&datacnh="+datacnh+"&valcnh="+valcnh+"&nasc="+nasc+
			"&sexo="+sexo+"&nome="+nome+"&idi="+idi);
}
else
{
	response.sendRedirect("Altera_ClienteF.jsp?user="+user+"&agencia="+agencia+"&idi="+idi);
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