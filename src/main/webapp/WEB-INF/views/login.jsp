<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Autenticación de usuario</title>
</head>
<body>
	<h1>Autenticación de Usuario</h1>
	<%
		String error = (String) request.getAttribute("error");
		if (error != null && error.equals("true")){
			out.println("<h3>ERROR DE AUTENTICACIÓN</h3>");
		}
	%>
	<form name="loginForm" action="${pageContext.request.contextPath}/login" method="post">
		<table>
			<tr>
				<td>Usuario:</td>
				<td><input type="text" name="username" value=""></td>
			</tr>
			<tr>
				<td>Contraseña:</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td><input type="submit" name="submit" value="Ingresar"></td>
				<td><input type="reset" name="reset " value="Limpiar"></td>
			</tr>
		</table>
	</form>
</body>
</html>