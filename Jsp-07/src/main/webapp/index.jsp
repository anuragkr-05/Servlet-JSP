<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" 
    import="java.util.*,in.pwskills.nitin.bean.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>OPERATORS IN JSP</title>
</head>
<body>
  <h1> Working with Arrays</h1>
  <%
  	String names[] = {"sachin","kohli","dhoni","dravid"};
  	pageContext.setAttribute("name", names);//pageScope
  %>
  
  <h1>
  	${name[0]}<br>
  	${name['1'] }<br>
  	${name["2"] }<br>
  	${name[5] }
  </h1>
  
  <hr>
  
  <h1> Working with ArrayList</h1>
  <%
  	ArrayList<String> al = new ArrayList<>();
  	al.add("Nitin");
  	al.add("Naveen");
  	al.add("Gagan");
  	al.add("Manjunath");
  	pageContext.setAttribute("stdName", al);
  	pageContext.setAttribute("index",3);
  %>
  <h1>
  	${stdName[0]}<br>
  	${stdName["1"]}<br>
  	${stdName['2']}<br>
  	${stdName[5]}<br>
  	${stdName[index] }	
  </h1>
  
  <%
  	ArrayList<Student> stdList =new ArrayList<Student>();
  
  	pageContext.setAttribute("student", stdList);
  %>
  <h1>StudentList :: ${empty student }</h1>	
  
  <hr>
  <h1>EL versus null</h1>
  <h1>${10+null}</h1>
  <h1>${empty null}</h1>
  <h1>${!null}</h1>
</body>
</html>