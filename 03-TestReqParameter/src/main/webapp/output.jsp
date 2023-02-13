<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Info</title>
</head>
<body>
	<% String [] str = (String []) session.getAttribute("info"); %>
	
	<table>
		<tr>
			<td>Name</td>
			<td>Course</td>
		</tr>
		<tr>
			<td><%=str[0] %></td>
			<td><%=str[1] %></td>
		</tr>
	</table>
	<a href="index.jsp?aName=<%=str[0]%>&aCourse=<%=str[1]%>">Home link</a>
</body>
</html>