<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <!-- CON SCRIPTLETS -->   

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Axencia de viaxes</title>
</head>
<body>
<h1>Axencia de viaxes</h1>
<%
// valor por defecto
String cidade_favorita ="Madrid";
// le a cookie da petición navegador
Cookie[] cookies = request.getCookies();
// buscar a preferencias. A cidade_favorita
if (cookies!= null) { // cookies xa creadas de visitas anteriores
    for(Cookie cookie: cookies) {
       if ("axencia_viaxes.cidade_favorita".equals(cookie.getName())) {
          // se codificamos a cookie ao creala, decodificariamola ao recuperala       
          // cidade_favorita= java.net.URLDecoder.decode(cookie.getValue());
          cidade_favorita= cookie.getValue();   
          break;
       }
   }
}
%>
<h3>Voos a <%= cidade_favorita %></h3>
<p>Texto exemplo</p>
<p>Texto exemplo</p>
<p>Texto exemplo</p>
<h3>Hoteis en <%= cidade_favorita %></h3>
<p>Texto exemplo</p>
<p>Texto exemplo</p>
<p>Texto exemplo</p>
</body>
</html>





