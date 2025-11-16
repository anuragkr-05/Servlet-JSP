<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  import="java.util.*,in.pwskills.nitin.beans.*"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UI PAGE</title>
</head>
<body>
	<br><br>
	<table border='1' align='center' width='200'>
		<caption>TABLES</caption>
		<c:forEach var ='i' begin="1" end="10" step="1">
			
			<tr align="center">
				<td>2*${i}=</td>
				<td>${2*i}</td>
			</tr>	
		</c:forEach>
	</table>
	<br><br>
	
	<%
		String names[] ={"sachin","kohli","dhoni","dravid"};
	
		pageContext.setAttribute("stdNames", names);
	%>
	
	<h1>WORKING WITH FOREACH TO PERFORM READ OPERATION ON ARRAY</h1>
	<c:forEach var="name" items="${stdNames}">
		<h1>
			<c:out value="${name}"/><br>
		</h1>
	</c:forEach>
	
	<br>
	<br>
	
<%
  	ArrayList<Student> stdList =new ArrayList<Student>();
  	stdList.add(new Student("10","sachin",55));
  	stdList.add(new Student("7","dhoni",42));
  	stdList.add(new Student("18","kohli",35));
  	stdList.add(new Student("45","rohith",37));
  	pageContext.setAttribute("studentList", stdList);
  %>
 
<h1>WORKING WITH FOREACH TO PERFORM READ OPERATION ON LIST</h1>
 <c:choose>
 	<c:when test="${!empty studentList and studentList ne null}">
 		<table border='1' align="center">
 			<caption>STUDENT DATA</caption>
 			<tr>
 				<th>ID</th>
 				<th>NAME</th>
 				<th>AGE</th>
 			</tr>
 			<c:forEach var="student" items="${studentList }">
 				<h1>${student}</h1>
 				<tr>
 					<td>${student.sid}</td>
 					<td>${student.sname}</td>
 					<td>${student.sage}</td>	
 				</tr>
 			</c:forEach>	
 		</table>
 	</c:when>
 	<c:otherwise>
 		<h1 style='color:red;text-align:center'>No records to display</h1>
 	</c:otherwise>
 </c:choose>
 <br>
 <br>
 
 <h1> Working with ForTokens for Printing purpose</h1> 
 <c:set var="data" value="Hello,Hi,How are u?" scope="request"/>
 <c:forTokens items="${data }" delims="," var="msg">
 	<h1>${msg }</h1>
 </c:forTokens>
	
</body>
</html>




