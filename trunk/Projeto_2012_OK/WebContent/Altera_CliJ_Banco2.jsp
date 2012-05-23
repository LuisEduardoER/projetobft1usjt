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
	String nome = request.getParameter("nome");
	String nomecond = request.getParameter("nomec");
	String fone = request.getParameter("fone");
	String email = request.getParameter("email");
	String razao = request.getParameter("razao");
	String inscri = request.getParameter("inscri");
	String cnh = request.getParameter("cnh");
	String catcnh = request.getParameter("catcnh");
	String estadocnh = request.getParameter("estemcnh");
	String emiscnh = request.getParameter("dataemcnh");
	String valcnh = request.getParameter("datavalcnh");
	String cpf = request.getParameter("cpf");
	String cnpj = request.getParameter("cnpj");
	String rg = request.getParameter("rg");
	String nada= "";
	
	try{
	
		Class.forName("org.postgresql.Driver");

		Connection connection = DriverManager.getConnection(
			"jdbc:postgresql://localhost:5432/3ASIN", 	//banco de dados 
			"postgres",	 									//usuario
			"postgre");									//senha
			
			Statement stm = connection.createStatement();
			stm = connection.createStatement();
			
			String sql1 = "delete from cliente where cnpj='"+cnpj+"'";
			String sql2 = "delete from cliente_pj where cnpj='"+cnpj+"'";
			String sql3 = "delete from cl_condutor where cnpj='"+cnpj+"'";
			stm.executeUpdate(sql1);
			stm.executeUpdate(sql2);	
			stm.executeUpdate(sql3);
			
			String sql4 = "insert into cliente (cpf,passaporte,cnpj,telefone,email) values ('"+nada+"','"+nada+"','"+cnpj+"','"+fone+"','"+email+"')";
			String sql5 = "insert into cliente_pj (cnpj,nomefant,razaosoci,inscriest,loc) values ('"+cnpj+"','"+nome+"','"+razao+"','"+inscri+"','Não')";
			String sql6 = "insert into cl_condutor (cnpj,nomecond,rgcond,cpfcond,habilitacaocond,categoriacond,estadoemiscond,dataemiscond,validadecond) values ('"+cnpj+"','"+nomecond+"','"+rg+"','"+cpf+"','"+cnh+"','"+catcnh+"','"+estadocnh+"','"+emiscnh+"','"+valcnh+"')";
			stm.executeUpdate(sql4);
			stm.executeUpdate(sql5);	
			stm.executeUpdate(sql6);
		
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
	
		javax.swing.JOptionPane.showMessageDialog(null,"Cliente alterado com Sucesso!");
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