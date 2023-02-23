<%@ page import="com.jdc.tls.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" />
<title>Show Page</title>
</head>
<body>
	<% StoreInfo info = (StoreInfo) session.getAttribute("carInfo"); %>
	<table class="table" >
		<tr>
			<td>Car No:</td>
			<td>Name: </td>
			<td>Travel Info</td>
		</tr>			
		<% for(CarInfo i : info.getList()) { %>
		<tr>
			<td><%=i.getCarNo() %></td>
			<td><%=i.getCarName() %></td>
			<td><%=i.getTravelInfo() %></td>
		</tr>
		<% } %>
	</table>
</body>
</html>