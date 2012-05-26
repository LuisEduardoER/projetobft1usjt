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
	String estrangeiro = request.getParameter("estrangeiro");
	String nome = request.getParameter("nome");
	String fone = request.getParameter("fone");
	String email = request.getParameter("email");
	String sexo = request.getParameter("sexo");
	String datanasc = request.getParameter("datanasc");
	String cnh = request.getParameter("cnh");
	String catcnh = request.getParameter("catcnh");
	String estadocnh = request.getParameter("estemcnh");
	String emiscnh = request.getParameter("dataemcnh");
	String valcnh = request.getParameter("datavalcnh");
	String pass = request.getParameter("pass");
	String cpf = request.getParameter("cpf");
	String rg = request.getParameter("rg");
	String nada= "";
	
	try{
	
		Class.forName("org.postgresql.Driver");

		Connection connection = DriverManager.getConnection(
			"jdbc:postgresql://localhost:5432/3ASIN", 	//banco de dados 
			"postgres",	 									//usuario
			"postgre");									//senha
		
		Statement stm = connection.createStatement();
			
		if(estrangeiro.equals("Sim"))
		{
			String sql1  = "delete from cliente where passaporte='"+pass+"'";
			String sql2 = "insert into cliente (cpf,passaporte,cnpj,telefone,email) values ('"+nada+"','"+pass+"','"+nada+"','"+fone+"','"+email+"')";
			String sql3 = "delete from cliente_es where passaporte='"+pass+"'";
			String sql4 = "insert into cliente_es (passaporte,habilitacao,categoriacnh,estemiscnh,dataemiscnh,validadecnh,datanasc,sexo,nome,loc) values ('"+pass+"','"+cnh+"','"+catcnh+"','"+estadocnh+"','"+emiscnh+"','"+valcnh+"','"+datanasc+"','"+sexo+"','"+nome+"','N�o')";
			stm = connection.createStatement();
			stm.executeUpdate(sql1);
			stm.executeUpdate(sql2);
			stm.executeUpdate(sql3);
			stm.executeUpdate(sql4);
		}
		else if(estrangeiro.equals("Nao"))
		{
			String sql1  = "delete from cliente where cpf='"+cpf+"'";
			String sql2 = "insert into cliente (cpf,passaporte,cnpj,telefone,email) values ('"+cpf+"','"+nada+"','"+nada+"','"+fone+"','"+email+"')";
			String sql3  = "delete from cliente_pf where cpf='"+cpf+"'";
			String sql4 = "insert into cliente_pf (cpf,rg,habilitacao,categoriacnh,estemiscnh,dataemiscnh,validadecnh,datanasc,sexo,nome,loc) values ('"+cpf+"','"+rg+"','"+cnh+"','"+catcnh+"','"+estadocnh+"','"+emiscnh+"','"+valcnh+"','"+datanasc+"','"+sexo+"','"+nome+"','N�o')";
			stm = connection.createStatement();
			stm.executeUpdate(sql1);
			stm.executeUpdate(sql2);
			stm.executeUpdate(sql3);
			stm.executeUpdate(sql4);
		}		
		
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
	
		javax.swing.JOptionPane.showMessageDialog(null,"Cliente Alterado com Sucesso!");
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