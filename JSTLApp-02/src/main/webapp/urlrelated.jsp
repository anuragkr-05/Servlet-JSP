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
<%
  	ArrayList<Student> stdList =new ArrayList<Student>();
  	stdList.add(new Student("10","sachin",55,"MI"));
  	stdList.add(new Student("7","dhoni",42,"CSK"));
  	stdList.add(new Student("18","kohli",35,"RCB"));
  	stdList.add(new Student("45","rohith",37,"MI"));
  	pageContext.setAttribute("studentList", stdList);
  %>
 
<h1>WORKING WITH FOREACH TO PERFORM READ OPERATION ON LIST</h1>
 <c:choose>
 	<c:when test="${!empty studentList and studentList ne null}">
 		<table align="center">
 			<caption>STUDENT DATA</caption>
 			<tr>
 				<th>NAME</th>
 				<th>AGE</th>
 				<th>ADRESS</th>
 				<th>SUBJECT</th>
 				<th>ACTION</th>
 			</tr>
 			<c:forEach var="student" items="${studentList }">
 				<h1>${student}</h1>
 				
 				<c:url var="updateLink" value="/student/update">
 					<c:param name="sid" value='${student.sid }'/>
 				</c:url>
 				
 				<c:url var="deleteLink" value="/student/delete">
 					<c:param name="sid" value='${student.sid }'/>
 				</c:url>
 				
 				<tr>
 					<td>${student.sname}</td>
 					<td>${student.sage}</td>
 					<td>${student.saddress }</td>
 					<td>${param.UI} and ${param.FRAMEWORK}</td>
 					
 					<td>
 						<a href='${updateLink}'>UPDATE</a>
 							|
 						<a href='${deleteLink}'>DELETE</a>
 					</td>	
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
</body>
</html>




