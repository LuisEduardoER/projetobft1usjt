<head> <meta http-equiv = "refresh" content = "10" /></head>
<script src="js/SpryMenuBar.js" type="text/javascript"></script>
<link href="css/SpryMenuBarHorizontal.css" rel="stylesheet" type="text/css">
<%
	String user = request.getParameter("user");
	String agencia = request.getParameter("agencia");
%>
<title>Menu Principal</title> 
<%@ page language="java" 
		import="java.util.*"
		import="javax.swing.*"
		%>
<table width="800" border="0" align="left" cellpadding="3" cellspacing="0" bgcolor="#999999">
  <tr bgcolor="#FFFFFF">
    <td width="394" >
    	<div align="left"><font color="#000000">
    		Bem Vindo, <%= user%>
    	</font></div>
    </td>
    <td width="394" >
    	<div align="right">
    		Agência: <%= agencia%>
    	</div>
    </td>
  </tr>
  <tr>
    <td colspan="2" align="center"><font color="#FFFFFF" face="arial, verdana, helvetica">
  <b>Locadora de Veiculos</b> 
    </font></td> 
  </tr> 
  <tr align="center" valign="top"> 
    <td height="100" colspan="2" align="center" bgcolor="#FFFFFF"> 
      <div align="center"><font face="arial, verdana, helvetica"> 
        <br>
        </font>
        <ul id="MenuBar1" class="MenuBarHorizontal">
          <li type="square">
            <a class="MenuBarItemSubmenu" href="#"><center>Cliente</center></a>
            <ul>
              <li>
              	<a class="MenuBarItemSubmenu" href="#"><center>Pessoa Física</center></a>
              	<ul>
              		<li><a href="Cadastra_ClienteF.jsp?user=<%= user %>&agencia=<%=agencia%>">Cadastrar</a></li>
              		<li><a href="Consulta_ClienteF.jsp?user=<%= user %>&agencia=<%=agencia%>">Consultar</a></li>
              		<li><a href="Altera_ClienteF.jsp?user=<%= user %>&agencia=<%=agencia%>">Editar</a></li>
              		<li><a href="Deleta_ClienteF.jsp?user=<%= user %>&agencia=<%=agencia%>">Excluir</a></li>
              	</ul>
              </li>
              <li>
              	<a class="MenuBarItemSubmenu" href="#"><center>Pessoa Jurídica</center></a>
              	<ul>
              		<li><a href="Cadastra_ClienteJ.jsp?user=<%= user %>&agencia=<%=agencia%>">Cadastrar</a></li>
              		<li><a href="Consulta_ClienteJ.jsp?user=<%= user %>&agencia=<%=agencia%>">Consultar</a></li>
              		<li><a href="Altera_ClienteJ.jsp?user=<%= user %>&agencia=<%=agencia%>">Editar</a></li>
              		<li><a href="Deleta_ClienteJ.jsp?user=<%= user %>&agencia=<%=agencia%>">Excluir</a></li>
              	</ul>
              </li>
            </ul>
          </li>
          <li><a href="#" class="MenuBarItemSubmenu"><center>Veiculo</center></a>
            <ul>
              <li><a href="Cadastra_Veiculo.jsp?user=<%= user %>&agencia=<%=agencia%>">Cadastrar</a></li>
              <li><a href="Consulta_Veiculo.jsp?user=<%= user %>&agencia=<%=agencia%>">Consultar</a></li>
              <li><a href="Altera_Veiculo.jsp?user=<%= user %>&agencia=<%=agencia%>">Editar</a></li>
              <li><a href="Deleta_Veiculo.jsp?user=<%= user %>&agencia=<%=agencia%>">Excluir</a></li>
            </ul>
          </li>
          <li><a class="MenuBarItemSubmenu" href="#"><center>Locacao</center></a>
            <ul>
              <li><a href="Cadastra_Locacao.jsp?user=<%= user %>&agencia=<%=agencia%>">Cadastrar</a></li>
              <li><a href="#">Consultar</a></li>
              <li><a href="#">Finalizar</a></li>
            </ul>
          </li>
          <li><a href="Login.jsp"><center>Logout</center></a></li>
        </ul>
    </div></td> 
  </tr>
  <tr align="center" valign="middle">
    <td height="200" colspan="2" bgcolor="#FFFFFF"><img src="imagens/logo_96.png" width="275" height="275" /></td>
       <%= new java.util.Date() %>         
  </tr>
</table>
<table width="800" cellspacing="1" cellpadding="3" border="0" bgcolor="#999999"> 
</table>
<script type="text/javascript">
var MenuBar1 = new Spry.Widget.MenuBar("MenuBar1", {imgDown:"imagens/SpryMenuBarDownHover.gif", imgRight:"imagens/SpryMenuBarRightHover.gif"});
  </script>
