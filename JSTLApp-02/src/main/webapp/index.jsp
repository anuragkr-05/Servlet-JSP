<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UI PAGE</title>
</head>
<body>
	<h1>
		UserName is :: ${param.name }
	</h1>
	<c:catch var="e">
		<%
			int age =Integer.parseInt(request.getParameter("age"));
		%>
		<h1>Age is :: ${param.age}</h1>
	</c:catch>
	<c:if test="${e ne null }">
		<h1>OOPs... Excpetion raised :: ${e }</h1>
	</c:if>
	<h1>Height is :: ${param.height}</h1>
</body>
</html>



