<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Axencia de Viaxes</h1>
	<!-- establece valor por defecto para cidade_favorita -->
	<c:set var="cidade_favorita" value="Madrid" />
	<!-- comproba cookies buscando cidade_favorita -->
	<c:forEach var="elemento" items="${cookie}">
		<c:if
			test="${elemento.value.name eq 'axencia_viaxes_conServlet.cidade_favorita' }">
			<c:set var="cidade_favorita" value="${ elemento.value.value}" />
		</c:if>
	</c:forEach>
	<c:out value="${cidade_favorita }"/>
	<!-- recolle valor de cidade favorita marcando como selected a actual -->
	<form action="/Cookies/servletAxencia" method="post"">
		Destino favorito: <select name="cidade_favorita">
			<option value="">Selecciona cidade</option>
			<option value="Madrid"
				<c:if test="${cidade_favorita eq 'Madrid'}">
					<c:out value=" selected " />
				</c:if>
				>Madrid</option>
			<option value="Paris"
				<c:if test="${cidade_favorita eq 'Paris'}">
					<c:out value=" selected " />
				</c:if>
				>Paris</option>
			<option value="Monforte"
				<c:if test="${cidade_favorita eq 'Monforte'}">
					<c:out value=" selected " />
				</c:if>
				>Monforte</option>

		</select> <br /> <br /> <br /> <input type="submit" value="Enviar">
	</form>

	<!-- mostra voos a cidade_favorita -->
	<h3>Voos a ${cidade_favorita}</h3>
	<p>Texto exemplo</p>
	<p>Texto exemplo</p>
	<p>Texto exemplo</p>
	<h3>Hoteis en ${cidade_favorita}</h3>
	<p>Hotel Parador- 5 estrellas</p>
	<p>Hostal ribeira sacra-3 estrellas</p>
	<p>Hotel cardenal 4 estrellas</p>
</body>
</html>