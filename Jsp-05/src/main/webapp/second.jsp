<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Landing Page</title>
</head>
<body>
	<b> Start of Second.jsp</b><br>
	<%= new java.util.Date() %><br>
	BookName  is :: <%= request.getParameter("bookName") %><br>
	BookPrice is :: <%= request.getParameter("amount")%> 
</body>
</html>