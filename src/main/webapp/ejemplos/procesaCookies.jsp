<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Axencia de viaxes</title>
</head>
<body>
<%
// ler datos do formulario
String cidade_favorita= request.getParameter("cidade_favorita");


// NOTA: na especificación orixinal non se permiten caracteres de coma, punto e coma e espazo na cookie
// Se queremos usalos, podemos codificala e decodificala no destino; pero necesitaríamos scriptlets
// ou facelo nun controlador; non en JSTL+EL
//  cidade_favorita = URLEncoder.encode(cidade_favorita);

// crear a cookie. Nome por convencion: web_site_theme.cookie_name
Cookie cookie = new Cookie("axencia_viaxes.cidade_favorita", cidade_favorita);
// configurar vida da cookie
cookie.setMaxAge(365*24*60*60); // un ano de vida
// enviar a usuario
response.addCookie(cookie);

%>
Gracias por enviar as túas preferencias
<a href="axencia_viaxes.jsp">Ir á axencia de viaxes</a>
</body>
</html>