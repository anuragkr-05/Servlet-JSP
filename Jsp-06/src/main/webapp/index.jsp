<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Index Page</title>
</head>
<body>
	<h1>USERNAME IS :: ${initParam.username }</h1><br>
	<h1>PASSWORD IS :: ${initParam.password }</h1><br>
	<h1>EMAILID  IS :: ${initParam.emailId }</h1>
	
	<hr>
	<b>Working with Pagecontext Object</b>
	<h1>PageContext Object details :: ${pageContext}</h1>
	<h1>Session id :: ${pageContext.session.id }</h1>
	<h1>Request Method type is :: ${pageContext.request.method }</h1>
	<h1>HeaderName is :: ${header}</h1>
</body>
</html>