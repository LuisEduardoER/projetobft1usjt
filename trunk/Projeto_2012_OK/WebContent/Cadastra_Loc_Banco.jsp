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
	String idcli = request.getParameter("idcli");
	String tipocli = request.getParameter("tipocli");
	String idvei = request.getParameter("idvei");
	String gps = request.getParameter("gps");
	String bebe = request.getParameter("bebe");
	String motorista = request.getParameter("motorista");
	String km = request.getParameter("km");
	String dataloc = request.getParameter("dataloc");
	String horaloc = request.getParameter("horaloc");
	String agencialoc = request.getParameter("agencialoc");
	String datadev = request.getParameter("datadev");
	String agenciadev = request.getParameter("agenciadev");
	String horadev = request.getParameter("horadev");
	String registro = request.getParameter("registro");
	String sitloc = "Ativa";
	String cpf = "";
	String cnpj = "";
	String pass = "";
	String kmini = "";
	String sql2 = "";
	String sql3 = ""; 
	
	if(gps != null)
	{
		gps = "sim";
	}
	else
	{
		gps = "não";
	}
	
	if(bebe != null)
	{
		bebe = "sim";
	}
	else
	{
		bebe = "não";
	}
	
	if(motorista != null)
	{
		motorista = "sim";
	}
	else
	{
		motorista = "não";
	}
	
	try{
	
		Class.forName("org.postgresql.Driver");

		Connection connection = DriverManager.getConnection(
			"jdbc:postgresql://localhost:5432/3ASIN", 	//banco de dados 
			"postgres",	 									//usuario
			"postgre");									//senha
		
			
		String sql1 = "select * from Veiculo where codigo= "+idvei+"";	
		Statement stm1 = connection.createStatement();
		ResultSet rs1 = stm1.executeQuery(sql1);
		if(rs1.next())
		{
			kmini = ""+rs1.getInt("km");
			sql3 = "UPDATE veiculo SET sitvei='Indisponível' WHERE codigo= '"+idvei+"'";
		}
		else
		{
			javax.swing.JOptionPane.showMessageDialog(null,"Veiculo não Encontrado!!");
			%>
			<script>javascript:history.back();</script>
			<%
		}
		
		if(tipocli.equals("PF"))
		{
			String sql0 = "select * from cliente_pf where cpf ILIKE '"+idcli+"'";
			Statement stm = connection.createStatement();
			ResultSet rs = stm.executeQuery(sql0);
			if(rs.next())
			{
				cpf = rs.getString("cpf");
		
			}
			else
			{
				javax.swing.JOptionPane.showMessageDialog(null,"Cliente não Encontrado!!");
				%>
				<script>javascript:history.back();</script>
				<%
			}
			sql2 = "UPDATE cliente_pf SET loc='Sim' WHERE cpf ILIKE '"+idcli+"'";
		}
		else if(tipocli.equals("PJ"))
		{
			String sql0 = "select * from cliente_pj where cnpj ILIKE '"+idcli+"'";
			Statement stm = connection.createStatement();
			ResultSet rs = stm.executeQuery(sql0);
			if(rs.next())
			{
				cnpj = rs.getString("cnpj");
		
			}
			else
			{
				javax.swing.JOptionPane.showMessageDialog(null,"Cliente não Encontrado!!");
				%>
				<script>javascript:history.back();</script>
				<%
			}
			sql2 = "UPDATE cliente_pj SET loc='Sim' WHERE cnpj ILIKE '"+idcli+"'";
		}
		else if(tipocli.equals("PE"))
		{
			String sql0 = "select * from cliente_es where passaporte ILIKE '"+idcli+"'";
			Statement stm = connection.createStatement();
			ResultSet rs = stm.executeQuery(sql0);
			if(rs.next())
			{
				pass = rs.getString("passaporte");
		
			}
			else
			{
				javax.swing.JOptionPane.showMessageDialog(null,"Cliente não Encontrado!!");
				%>
				<script>javascript:history.back();</script>
				<%
			}
			sql2 = "UPDATE cliente_es SET loc='Sim' WHERE passaporte ILIKE '"+idcli+"'";
		}
		
		javax.swing.JOptionPane.showMessageDialog(null,"Registro: "+registro+"\nidcli: "+idcli+"\ntipocli: "+tipocli+"\nidvei: "+idvei+"\ntarifa: "+km+"\nKm inicial: "+kmini+"\ngps: "+gps+"\nbebe: "+bebe+"\nmotorista: "+motorista+
				"\ndataloc: "+dataloc+"\nhoraloc: "+horaloc+"\nagenciaLoc: "+agencialoc+"\ndatadev: "+datadev+"\nhoradev: "+horadev+
				"\nagenciadev: "+agenciadev+"\nsitloc: "+sitloc);
		
		String sql = "insert into locacao (codlocacao,cpf,passaporte,cnpj,codVeiculo,agenciaLoc,dataLoc,horaLoc,dataDev,agenciaDev,kmInicial,gps,bebe,motorista,tipotarifa,sitloc) values ('"+registro+"','"+cpf+"','"+pass+"','"+cnpj+"','"+idvei+"','"+agencialoc+"','"+dataloc+"','"+horaloc+"','"+datadev+"','"+agenciadev+"','"+kmini+"','"+gps+"','"+bebe+"','"+motorista+"','"+km+"','"+sitloc+"')";
		Statement stm = connection.createStatement();
		stm = connection.createStatement();
		stm.executeUpdate(sql);
		stm.executeUpdate(sql2);
		stm.executeUpdate(sql3);
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
	
		javax.swing.JOptionPane.showMessageDialog(null,"Locação efetuada com Sucesso!");
		response.sendRedirect("Menu_Principal.jsp?user="+user+"&agencia="+agencia);
		
		} 
		catch (ClassNotFoundException e) 
		{
			javax.swing.JOptionPane.showMessageDialog(null,"Erro no Cadastro!");
			%>
				<script>javascript:history.back();</script>
			<%
			e.printStackTrace();
		}
		catch(SQLException e)
		{
			javax.swing.JOptionPane.showMessageDialog(null,"Erro no Cadastro!");
			%>
				<script>javascript:history.back();</script>
			<%
			e.printStackTrace();
		}
%>
</body>
</html>