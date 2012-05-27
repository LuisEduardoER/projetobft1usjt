<head> 
<meta http-equiv = "refresh" content = "60" />

	<script src="idiomas\Portugues\Pt.js" type="text/javascript"></script>
    <script src="idiomas\English\Eng.js" type="text/javascript"></script>
    <script src="idiomas\Espanol\Es.js" type="text/javascript"></script>
    <script src="idiomas\knockout-2.0.0.js" type="text/javascript"></script>

</head>

<script src="js/SpryMenuBar.js" type="text/javascript"></script>
<link href="css/SpryMenuBarHorizontal.css" rel="stylesheet" type="text/css">
<%
	String user = request.getParameter("user");
	String agencia = request.getParameter("agencia");
	String idi = request.getParameter("idi");
%>
<body text="#000000" onload="<%=idi%>">
<title>Menu Principal</title> 
<%@ page language="java" 
		import="java.util.*"
		import="javax.swing.*"
		%>
<table width="800" border="0" align="left" cellpadding="3" cellspacing="0" bgcolor="#999999">
  <tr bgcolor="#FFFFFF">
    <td width="394" >
    	<div align="left"><font color="#000000">
    		<label data-bind="text: bemvin"></label><%= user%>
    	</font></div>
    </td>
    <td width="394" >
    	<div align="right">
    		<label data-bind="text: agencia"></label>: <%= agencia%>
    	</div>
    </td>
  </tr>
  <tr>
    <td colspan="2" align="center"><font color="#FFFFFF" face="arial, verdana, helvetica">
  <b><label data-bind="text: locvei"></label></b> 
    </font></td> 
  </tr> 
  <tr align="center" valign="top"> 
    <td height="100" colspan="2" align="center" bgcolor="#FFFFFF"> 
      <div align="center"><font face="arial, verdana, helvetica"> 
        <br>
        </font>
        <ul id="MenuBar1" class="MenuBarHorizontal">
          <li type="square">
            <a class="MenuBarItemSubmenu" href="#"><center><label data-bind="text: cliente"></label></center></a>
            <ul>
              <li>
              	<a class="MenuBarItemSubmenu" href="#"><center><label data-bind="text: pf"></label></center></a>
              	<ul>
              		<li><a href="Cadastra_ClienteF.jsp?user=<%= user %>&agencia=<%=agencia%>&idi=<%=idi%>"><label data-bind="text: cadastra"></label></a></li>
              		<li><a href="Consulta_ClienteF.jsp?user=<%= user %>&agencia=<%=agencia%>&idi=<%=idi%>"><label data-bind="text: consulta"></label></a></li>
              		<li><a href="Altera_ClienteF.jsp?user=<%= user %>&agencia=<%=agencia%>&idi=<%=idi%>"><label data-bind="text: edita"></label></a></li>
              		<li><a href="Deleta_ClienteF.jsp?user=<%= user %>&agencia=<%=agencia%>&idi=<%=idi%>"><label data-bind="text: exclui"></label></a></li>
              	</ul>
              </li>
              <li>
              	<a class="MenuBarItemSubmenu" href="#"><center><label data-bind="text: pj"></label></center></a>
              	<ul>
              		<li><a href="Cadastra_ClienteJ.jsp?user=<%= user %>&agencia=<%=agencia%>&idi=<%=idi%>"><label data-bind="text: cadastra"></label></a></li>
              		<li><a href="Consulta_ClienteJ.jsp?user=<%= user %>&agencia=<%=agencia%>&idi=<%=idi%>"><label data-bind="text: consulta"></label></a></li>
              		<li><a href="Altera_ClienteJ.jsp?user=<%= user %>&agencia=<%=agencia%>&idi=<%=idi%>"><label data-bind="text: edita"></label></a></li>
              		<li><a href="Deleta_ClienteJ.jsp?user=<%= user %>&agencia=<%=agencia%>&idi=<%=idi%>"><label data-bind="text: exclui"></label></a></li>
              	</ul>
              </li>
            </ul>
          </li>
          <li><a href="#" class="MenuBarItemSubmenu"><center><label data-bind="text: veiculo"></label></center></a>
            <ul>
              <li><a href="Cadastra_Veiculo.jsp?user=<%= user %>&agencia=<%=agencia%>&idi=<%=idi%>"><label data-bind="text: cadastra"></label></a></li>
              <li><a href="Consulta_Veiculo.jsp?user=<%= user %>&agencia=<%=agencia%>&idi=<%=idi%>"><label data-bind="text: consulta"></label></a></li>
              <li><a href="Altera_Veiculo.jsp?user=<%= user %>&agencia=<%=agencia%>&idi=<%=idi%>"><label data-bind="text: edita"></label></a></li>
              <li><a href="Deleta_Veiculo.jsp?user=<%= user %>&agencia=<%=agencia%>&idi=<%=idi%>"><label data-bind="text: exclui"></label></a></li>
            </ul>
          </li>
          <li><a class="MenuBarItemSubmenu" href="#"><center><label data-bind="text: loc"></label></center></a>
            <ul>
              <li><a href="Cadastra_Locacao.jsp?user=<%= user %>&agencia=<%=agencia%>&idi=<%=idi%>"><label data-bind="text: cadastra"></label></a></li>
              <li><a href="Consulta_Locacao.jsp?user=<%= user %>&agencia=<%=agencia%>&idi=<%=idi%>"><label data-bind="text: consulta"></label></a></li>
              <li><a href="#"><label data-bind="text: finaliza"></label></a></li>
            </ul>
          </li>
          <li><a href="Login.jsp?idi=<%= idi%>"><center><label data-bind="text: logout"></label></center></a></li>
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
</body>
