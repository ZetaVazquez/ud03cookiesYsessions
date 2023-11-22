<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

	String userid=request.getParameter("username");
	String password=request.getParameter("password");
	
	if (userid.equals("pepe") && password.equals("abc123.")) {
	session.setAttribute("userid", userid);
	response.sendRedirect("index.jsp");
	} else {
	out.println("Usuario  ou contrasinal incorrectos,  <a href='inicio.jsp'>tenteo de novo</a> ");
}
%>

</body>
</html>