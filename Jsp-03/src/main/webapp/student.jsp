<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Landing Page</title>
</head>
<body>
	<h1 style="color: red; text-align: center">Working with JSP Bean
		Tags</h1>

	<jsp:useBean id="student" class="in.pwskills.nitin.beans.Student" scope="page">
		<jsp:setProperty property="*" name="student"/>
	</jsp:useBean>

	<table border='1' align='center'>
		<thead>
			<tr>
				<th>NAME</th>
				<th>AGE</th>
				<th>ADDRESS</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><jsp:getProperty property="name" name="student" /></td>
				<td><jsp:getProperty property="age" name="student" /></td>
				<td><jsp:getProperty property="address" name="student" /></td>
			</tr>
		</tbody>
	</table>
</body>
</html>