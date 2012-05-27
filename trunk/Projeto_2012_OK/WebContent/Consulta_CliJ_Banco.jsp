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
	String agencia = request.getParameter("agencia");
	String idi = request.getParameter("idi");
	String cnpj1 = request.getParameter("cnpj");
	String cpf = "";
	String fone = "";
	String email = "";
	String rg = "";
	String cnh = "";
	String catcnh = "";
	String estadocnh = "";
	String datacnh = "";
	String valcnh = "";
	String nome = "";
	String nomecond = "";
	String razao = "";
	String inscri = "";
	String cnpj = "";
	String loc = "";
	
try{
	
	Class.forName("org.postgresql.Driver");

	Connection connection = DriverManager.getConnection(
			"jdbc:postgresql://localhost:5432/3ASIN", 	//banco de dados 
			"postgres",	 									//usuario
			"postgre");									//senha

	String sql1 = "select * from cliente where cnpj ILIKE '"+cnpj1+"'";
	String sql2 = "select * from cl_condutor where cnpj ILIKE '"+cnpj1+"'";
	String sql3 = "select * from cliente_pj where cnpj ILIKE '"+cnpj1+"'";
	
	Statement stm1 = connection.createStatement();
	Statement stm2 = connection.createStatement();
	Statement stm3 = connection.createStatement();
	ResultSet rs1 = stm1.executeQuery(sql1);
	ResultSet rs2 = stm2.executeQuery(sql2);
	ResultSet rs3 = stm3.executeQuery(sql3);
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
	cnpj = rs1.getString("cnpj");
	fone = rs1.getString("telefone");
	email = rs1.getString("email");
}
else
{
	javax.swing.JOptionPane.showMessageDialog(null,"Message3");
	response.sendRedirect("Consulta_ClienteJ.jsp?user="+user+"&agencia="+agencia+"&idi="+idi);
}

if(rs2.next())
{
	cnh = rs2.getString("habilitacaocond");
	catcnh = rs2.getString("categoriacond");
	estadocnh = rs2.getString("estadoemiscond");
	datacnh = rs2.getString("dataemiscond");
	valcnh = rs2.getString("validadecond");
	nomecond = rs2.getString("nomecond");
	cpf = rs2.getString("cpfcond");
	rg = rs2.getString("rgcond");
}

if(rs3.next())
{
	nome = rs3.getString("nomefant");
	razao = rs3.getString("razaosoci");
	inscri = rs3.getString("inscriest");	
	loc = rs3.getString("loc");
	
	response.sendRedirect("Consulta_CliJ.jsp?user="+user+"&agencia="+agencia+"&nome="+nome+"&cpf="+cpf+"&rg="+rg+
			"&fone="+fone+"&email="+email+"&cnh="+cnh+"&catcnh="+catcnh+"&estemcnh="+estadocnh+"&dataemcnh="+datacnh+
			"&datavalcnh="+valcnh+"&cnpj="+cnpj+"&nomec="+nomecond+"&razao="+razao+"&inscri="+inscri+"&loc="+loc+"&idi="+idi);
}

connection.close();

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