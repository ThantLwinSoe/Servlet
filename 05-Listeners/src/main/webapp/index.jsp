<%@ page import="com.jdc.tls.util.*" %>
<%@ page import="com.jdc.tls.model.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" />
<title>Car Company</title>
<style type="text/css">
	.title_bar{
		background-color: #0f0f89;
		color: #09FF48;
		border-radius: 0;
		display: flex;
	}
	.nav_data{
		margin-top: 10px;
		margin-left: 400px;
		list-style-type: none;
		display: flex;
	}
	.nav_data > li {
		margin-left: 10px;
	}
	
	

</style>
</head>
<body>
	<% CarImpl carInfo = (CarImpl)application.getAttribute("info_view"); %>
	
	<div class="alert title_bar">
		<h3 style="margin-top: 10px;">Zayya Thein Company</h3>
		<form action="JustTest.jsp">
			<ul class="nav_data">
				<li><button type="submit" name="Hello"  class="btn btn-secondary" >Home</button></li>
			</ul>		
		
		</form>

	</div>
	<table class="table">
		<thead>
			<tr>
				<th>Name</th>
				<th>Start</th>
				<th>Distination</th>
				<th>Price</th>
			</tr>
		</thead>
		<%// if(carInfo != null) {
				for(Car car : carInfo.getList()) {
			%>
		<tbody>
			<tr>
				<td><%=car.getCar() %></td>
				<td><%=car.getStartPoint() %></td>
				<td><%=car.getEndPoint() %></td>
				<td><%=car.getPrice() %></td>
			</tr>
		</tbody>
		<% }
				//}%>
	</table>
	
</body>
</html>