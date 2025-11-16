<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Landing Page</title>
</head>
<body>
	<b> Start of First.jsp</b>
	<br>
	
	<%
		float bAmount = 300.0f + (3000.0f * 0.03f);
		System.out.println(bAmount);
	%>
	
	<jsp:forward page="second.jsp">
		<jsp:param value="JSP" name="bookName"/>
		<jsp:param value="<%=bAmount%>" name="amount"/>
	</jsp:forward>
	<br>
	<br>
	<b> End of First.jsp</b>
</body>
</html>





