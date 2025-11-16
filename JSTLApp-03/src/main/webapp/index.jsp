<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PRESENTATION</title>
</head>
<body>

	<fmt:setLocale value="hi-IN"/>
	
	<fmt:formatNumber var="number" value="4849383938"  type="currency"/>
	FormmattedNumber is :: ${number}<br><br>
	
	<jsp:useBean id="date" class="java.util.Date"/>
	<fmt:formatDate value="${date }" var="dt" type="both"/>
	FormattedDate is :: ${dt }<br><br>	
	
	
	<fmt:setBundle basename="in/pwskills/nitin/properties/App"/>
	<fmt:message  key="welcome.msg" var="msg1"/>
	<fmt:message  key="goodbye.msg" var="msg2"/>
	Message1 :: ${msg1}<br>
	Message2 :: ${msg2}<br>
</body>
</html>