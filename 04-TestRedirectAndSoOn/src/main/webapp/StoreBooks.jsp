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
		background: rgba(67,74,75,0.7);
	}
	table > tr,td{
		width: 500px;
		border-top: solid;
		border-bottom: solid;
		text-align: center;
	}
	table tr:nth-child(2n) {
		background: #996805;
	}
	.table_header {
		background: #50d870;
	}
	
</style>
</head>
<body>
	<h1>Book Store</h1>
	
	<% BookInfo bookInfo = (BookInfo)application.getAttribute("add"); %>
	
	
	<table >
		<tr class="table_header">
			<td>Name</td>
			<td>Quantity</td>
			<td>Price</td>
		</tr>
		
		<% for(Books b : bookInfo.getList()){ %>
		
		<tr class="table_body">
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