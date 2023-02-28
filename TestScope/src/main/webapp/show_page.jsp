<%@ page import="com.jdc.tls.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" />
<title>Show Page</title>
<style type="text/css">
	.locate_button {
		margin: 30px 300px 30px 500px;
	}
	.locate {
		padding-top: 100px;
		padding-left: 30px;
		padding-right: 30px;
		padding-bottom: 10px;
	}
</style>
</head>
<body class="bg-primary-subtle">
	<% StoreInfo info = (StoreInfo) session.getAttribute("carInfo"); %>
	
	<div class="alert" style="background-color: #0F0F34; border-radius: 0; color: #02D945; display: flex;">
		Daily Duty Info
		<div style="color: #02D945; display: flex; margin-left: 50px;">
			Testing
		</div>
	</div>
	
	<div class="locate">
	
	<table class="table table-dark" >
		<tr>
			<td>Car No:</td>
			<td>Name: </td>
			<td>Travel Info</td>
		</tr>			
		<% for( CarInfo i : info.getList()) { %>
		<tr>
			<td><%=i.getCarNo() %></td>
			<td><%=i.getCarName() %></td>
			<td><%=i.getTravelInfo() %></td>
		</tr>
		<% } %>
	</table>
	<a href="index.jsp" class="btn btn-primary locate_button" role="button">Go Home</a>
	</div>
</body>
</html>