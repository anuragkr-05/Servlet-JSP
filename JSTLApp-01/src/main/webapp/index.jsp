<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP PAGE</title>
</head>
<body>
	<h1>Working with Core Tags</h1>
	<%--PRINTS TO CONSOLE --%>
	<c:out value="${param.user }" />
	<br>

	<c:set var="x" value="10" scope="request" />
	<c:set var="y" value="20" scope="request" />
	<c:set var="sum" value="${x+y}" scope="request" />
	<h1>
		The result is ::
		<c:out value="${sum}" />
	</h1>
	<br>

	<h1>Removing the attributes from particular scope</h1>
	<c:remove var="sum" scope="request" />
	<h1>
		The result is ::
		<c:out value="${sum}" default="3000" />
	</h1>

	<br>
	<h1>Working with conditional tags</h1>
	<c:set var="msg" value="welcome to JSTL" scope='request' />
	<c:if test="${not empty param.user}">
		<h1><c:out value="${msg }" />MR/MRS/Miss <c:out value="${param.user }" /></h1>
	</c:if>

	<hr>
	<h1> Working with Switch case</h1>
	<c:choose>
		<c:when test="${param.no gt 0 }">
			<h1>${param.no } is positive</h1>
		</c:when>
		
		<c:when test="${param.no lt 0 }">
			<h1>${param.no } is negative</h1>
		</c:when>
		
		<!-- ELSE BLOCK -->
		<c:otherwise>
			<h1>${param.no } is zero</h1>
		</c:otherwise>
	</c:choose>


</body>
</html>