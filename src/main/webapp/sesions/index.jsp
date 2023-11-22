<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- index.jsp   -->

<br><br>

<% if ((session.getAttribute("userid")==null) || (session.getAttribute("userid")=="")) { %>
Non estás logueado, <a href="inicio.jsp">logueate</a>

<% } else {%>

Hola <%=session.getAttribute("userid") %>
<a href="logout.jsp"> logout</a>
<br><br>
Contido da páxina para usuarios logueados
<%} %>

</body>
</html>