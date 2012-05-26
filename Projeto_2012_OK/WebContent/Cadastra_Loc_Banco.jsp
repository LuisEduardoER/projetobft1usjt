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
	String tipokm = request.getParameter("tipokm");
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
	String cpf, cnpj, pass = "";
	
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
	
	if(tipokm.equals("KMLivre"))
	{
		tipokm = "Livre";
	}
	else
	{
		tipokm = "Controlado";
	}
	
	javax.swing.JOptionPane.showMessageDialog(null,"Registro: "+registro+"\nidcli: "+idcli+"\ntipocli: "+tipocli+"\nidvei: "+idvei+"\ntipokm: "+tipokm+"\ngps: "+gps+"\nbebe: "+bebe+"\nmotorista: "+motorista+
			"\nkm: "+km+"\ndataloc: "+dataloc+"\nhoraloc: "+horaloc+"\nagenciaLoc: "+agencialoc+"\ndatadev: "+datadev+"\nhoradev: "+horadev+
			"\nagenciadev: "+agenciadev+"\nsitloc: "+sitloc);
	
	try{
	
		Class.forName("org.postgresql.Driver");

		Connection connection = DriverManager.getConnection(
			"jdbc:postgresql://localhost:5432/3ASIN", 	//banco de dados 
			"postgres",	 									//usuario
			"postgre");									//senha
			
		if(tipocli.equals("PF"))
		{
			String sql0 = "select * from cliente_pf where cpf ILIKE '"+idcli+"'";
			Statement stm = connection.createStatement();
			ResultSet rs = stm.executeQuery(sql0);
			if(rs.next())
			{
				cpf = rs.getString("cpf");
		
			}	
		}
		else if(tipocli.equals("PJ"))
		{
			String sql0 = "select * from cliente_pj where cpf ILIKE '"+idcli+"'";
			Statement stm = connection.createStatement();
			ResultSet rs = stm.executeQuery(sql0);
			if(rs.next())
			{
				cnpj = rs.getString("cnpj");
		
			}	
		}
		else if(tipocli.equals("PE"))
		{
			String sql0 = "select * from cliente_es where cpf ILIKE '"+idcli+"'";
			Statement stm = connection.createStatement();
			ResultSet rs = stm.executeQuery(sql0);
			if(rs.next())
			{
				pass = rs.getString("passaporte");
		
			}	
		}
		
		//String sql = "insert into locacao (codlocacao,cpf,passaporte,cnpj,codveiculo,agencialoc,dataloc,horaloc,datadev,agenciadev,kminicial,gps,bebe,motorista,tipotarifa,sitloc,tipokm) values ('"+codigo+"','"+cor+"','"+chassi+"','"+placa+"','"+cidade+"','"+km+"','"+estado+"','"+modelo+"','"+kmcontrolado+"','"+kmlivre+"','"+grupo+"','"+fabricante+"','"+diaria+"','"+situacao+"')";
		//Statement stm = connection.createStatement();
		//stm = connection.createStatement();
		//stm.executeUpdate(sql);
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
		//response.sendRedirect("Consulta_Vei_Banco.jsp?user="+user+"&agencia="+agencia+"&consulta=codigo&codigo="+codigo);
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