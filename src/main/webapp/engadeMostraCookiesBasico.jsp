<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mostrar y Agregar Cookies</title>
</head>
<body>
	<h1>Mostrar y Agregar Cookies</h1>

	<!-- Muestra las cookies recibidas -->
	<h3>Cookies Recibidas</h3>
	<table>
		<%
		// Obtiene todas las cookies del navegador
		Cookie[] cookies = request.getCookies();

		if (cookies != null) {
			for (Cookie cookie : cookies) {
		%>
		<tr>
			<td><%=cookie.getName()%></td>
			<td><%=cookie.getValue()%></td>
		</tr>
		<%
		}
		}
		%>
	</table>

	<!-- Formulario para agregar una nueva cookie -->
	<h3>Agregar Nueva Cookie</h3>
	<form method="post" action="">
		<label for="nombre">Nombre :</label> 
		<input type="text" name="nombre" id="nombre" required> <br> 
		<label for="valor">Valor:</label> 
		<input type="text"name="valor" id="valor" required> <br> 
		<input type="submit" value="Agregar Cookie">
	</form>

	<%
	// Procesa la solicitud de agregar una nueva cookie
	if (request.getMethod().equals("POST")) {
		String nombreCookie = request.getParameter("nombre");
		String valorCookie = request.getParameter("valor");

		// Crea una nueva cookie y la agrega a la respuesta
		Cookie nuevaCookie = new Cookie(nombreCookie, valorCookie);
		response.addCookie(nuevaCookie);
	}
	%>
</body>
</html>
