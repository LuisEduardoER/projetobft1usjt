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
	String consulta = request.getParameter("consulta");
	String tipocli = request.getParameter("tipocli");
	String cli = request.getParameter("cli");
	String loc = request.getParameter("loc");
	String vei = request.getParameter("vei");

try{
	
	Class.forName("org.postgresql.Driver");

	Connection connection = DriverManager.getConnection(
			"jdbc:postgresql://localhost:5432/3ASIN", 	//banco de dados 
			"postgres",	 									//usuario
			"postgre");									//senha

	String sql = "";
	
	if(consulta.equals("Locacao"))
	{
		sql = "select * from locacao where codlocacao = '"+loc+"'";
	}
	else if(consulta.equals("cliente"))
	{
		if(tipocli.equals("PF"))
		{
			sql = "select * from locacao where cpf ILIKE '"+cli+"'";
		}
		else if(tipocli.equals("PJ"))
		{
			sql = "select * from locacao where cnpj ILIKE '"+cli+"'";
		}
		else if(tipocli.equals("PE"))
		{
			sql = "select * from locacao where passaporte ILIKE '"+cli+"'";
		}
	}
	else if(consulta.equals("Veiculo"))
	{
		sql = "select * from locacao where codveiculo '"+vei+"'";
	}
	
	Statement stm = connection.createStatement();
	ResultSet rs1 = stm.executeQuery(sql);
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
	int codloc = rs1.getInt("codlocacao");
	String cpf = rs1.getString("cpf");
	String pass = rs1.getString("passaporte");
	String cnpj = rs1.getString("cnpj");
	int codvei = rs1.getInt("codveiculo");
	String agencialoc= rs1.getString("agencialoc");
	String dataloc = rs1.getString("dataloc");
	String horaloc = rs1.getString("horaloc");
	String datadev = rs1.getString("datadev");
	String agenciadev = rs1.getString("agenciadev");
	String km = rs1.getString("kminicial");
	String gps = rs1.getString("gps");
	String bebe = rs1.getString("bebe");
	String motorista = rs1.getString("motorista");
	String tipotarifa = rs1.getString("tipotarifa");
	String sitloc = rs1.getString("sitloc");
	
	response.sendRedirect("Consulta_Loc.jsp?user="+user+"&agencia="+agencia+"&idi="+idi+"&codloc="+codloc+"&cpf="+cpf+"&pass="+pass+
			"&cnpj="+cnpj+"&codvei="+codvei+"&agencialoc="+agencialoc+"&dataloc="+dataloc+"&horaloc="+horaloc+"&datadev="+datadev+
			"&agenciadev="+agenciadev+"&km="+km+"&gps="+gps+"&bebe="+bebe+"&motorista="+motorista+"&tipotarifa="+tipotarifa+"&sitloc="+sitloc);
}

else
{
	javax.swing.JOptionPane.showMessageDialog(null,"message3");
	response.sendRedirect("Consulta_ClienteF.jsp?user="+user+"&agencia="+agencia+"&idi="+idi);
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