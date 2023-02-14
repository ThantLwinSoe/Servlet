<%@ page import="com.jdc.tls.call.*" %>
<%@ page import="com.jdc.tls.util.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Store Books</title>
<style type="text/css">
	table {
		width: 150px;
		border: solid;
	}
</style>
</head>
<body>
	<h1>Book Store</h1>
	
	<% BookInfo bookInfo = (BookInfo)application.getAttribute("add"); %>
	
	
	<table >
		<tr>
			<td>Name</td>
			<td>Quantity</td>
			<td>Price</td>
		</tr>
		
		<% for(Books b : bookInfo.getList()){ %>
		
		<tr>
			<td><%=b.getName()%></td>
			<td><%=String.valueOf(b.getQuantity())%></td>
			<td><%=String.valueOf(b.getPrice())%></td>
		</tr>
		
		<% } %>
	</table>
	<br>
	<br/>
	<a href="index.jsp">Home</a>
</body>
</html>