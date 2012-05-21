<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
	String user = request.getParameter("user");
	String agencia = request.getParameter("agencia");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Deletar Veículo</title>

<script language="JavaScript" type="text/JavaScript">

function habilitaCampo(consulta)
	{
		if (consulta == "chassi")
		{
			document.getElementById('chassi').disabled = false;
			document.getElementById('placa').disabled = true;
			document.getElementById('fabricante2').disabled = true;
			document.getElementById('modelo').disabled = true;
			document.getElementById('grupo2').disabled = true;
			document.getElementById('codigo').disabled = true;
        }
		if (consulta == "placa")
		{
			document.getElementById('chassi').disabled = true;
			document.getElementById('placa').disabled = false;
			document.getElementById('fabricante2').disabled = true;
			document.getElementById('modelo').disabled = true;
			document.getElementById('grupo2').disabled = true;
			document.getElementById('codigo').disabled = true;
        }
		if (consulta == "modelo")
		{
			document.getElementById('chassi').disabled = true;
			document.getElementById('placa').disabled = true;
			document.getElementById('fabricante2').disabled = true;
			document.getElementById('modelo').disabled = false;
			document.getElementById('grupo2').disabled = true;
			document.getElementById('codigo').disabled = true;
        }
		if (consulta == "fabricante1")
		{
			document.getElementById('chassi').disabled = true;
			document.getElementById('placa').disabled = true;
			document.getElementById('fabricante2').disabled = false;
			document.getElementById('modelo').disabled = true;
			document.getElementById('grupo2').disabled = true;
			document.getElementById('codigo').disabled = true;
        }
		if (consulta == "grupo1")
		{
			document.getElementById('chassi').disabled = true;
			document.getElementById('placa').disabled = true;
			document.getElementById('fabricante2').disabled = true;
			document.getElementById('modelo').disabled = true;
			document.getElementById('grupo2').disabled = false;
			document.getElementById('codigo').disabled = true;
        }
		if (consulta == "codigo")
		{
			document.getElementById('chassi').disabled = true;
			document.getElementById('placa').disabled = true;
			document.getElementById('fabricante2').disabled = true;
			document.getElementById('modelo').disabled = true;
			document.getElementById('grupo2').disabled = true;
			document.getElementById('codigo').disabled = false;
        }
}

</script>

</head>
<body text="#000000">


<form name="form1" id="form1" action="Deleta_Vei_Banco.jsp?user=<%= user%>&agencia=<%=agencia%>" method = "post">

	<h1><P align="center">Exclusão de Veículo</h1></P>
	<face="arial" size="12">
	<table align="center" border=0>
	<tr>
		<td><center><input type="radio" name="consulta" id="chassi1" value="chassi" onclick="habilitaCampo(this.value)"></></>Chassi</><br><input class="campo" TYPE="text" name="chassi" id="chassi" disabled></td>
		<td><center><input type="radio" name="consulta" id="placa1" value="placa" onclick="habilitaCampo(this.value)"></></>Placa</><br><input class="campo" type="text" name="placa" id="placa" disabled></td>
	</tr><tr></tr><tr></tr><tr></tr><tr></tr>
	<tr>
		<td><center><input type="radio" name="consulta" id="fabricante" value="fabricante1" onclick="habilitaCampo(this.value)"></></>Fabricante<br></>
							<SELECT class="campo" type="text" NAME="fabricante2" id="fabricante2" disabled>
						  	<OPTION >Chevrolet
						  	<OPTION >Citroën
							<OPTION >Fiat
							<OPTION >Ford
							<OPTION >GM
							<OPTION >Honda
							<OPTION >Hyundai
							<OPTION >Peugeot
							<OPTION >Renault
							<OPTION >Toyota
							<OPTION >Volkswagem
						  	</SELECT></center>
		</td>
		<td><center><input type="radio" name="consulta" id="modelo1" value="modelo" onclick="habilitaCampo(this.value)"></></>Modelo</><br><input class="campo" type="text" name="modelo" id="modelo" disabled></td>
	</tr><tr></tr><tr></tr><tr></tr><tr></tr>
	<tr>
		<td><center><input type="radio" name="consulta" id="grupo" value="grupo1" onclick="habilitaCampo(this.value)"></></>Grupo<br></>
							<SELECT class="campo" NAME="grupo2" id="grupo2" disabled>
						  	<OPTION >A-Econômico
							<OPTION >C-Econômico com Ar
							<OPTION >F-Intermediário
							<OPTION >G-Intermediário Wagon Especial
							<OPTION >H-Executivo
							<OPTION >I-Utilitário
							<OPTION >K-Executivo Luxo
							<OPTION >M-Intermediário Wagon
							<OPTION >N-Pick-up
							<OPTION >P-4X4 Especial
							<OPTION >R-Minivan
							<OPTION >U-Furão
							<OPTION >Y-Blindado
							<OPTION >Utilitário
						  	<SELECT></td>
		<td><center><input type="radio" name="consulta" id="codigo1" value="codigo" onclick="habilitaCampo(this.value)"></></>Código</><br><input class="campo" type="text" name="codigo" id="codigo" disabled></td>
	</tr>
	</table>
	
	<BR><BR>
	<center>	<INPUT type="submit" value= "OK">
				<INPUT type="reset" value= "Limpar">
				<input type='button' onclick='javascript:history.back()' value='Voltar' name='Voltar'></center>
				
	</form>			
	</body>
</html>