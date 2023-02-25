<%@ page import="com.jdc.tls.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test Scope</title>
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" />
<style type="text/css">
.location {
	margin: 10px 30px;
	padding: 10px auto;
}

.title-location {
	margin-top: 20px;
	margin-bottom: 5px;
	margin-left: 30px;
	margin-right: 30px;
}

.b-location {
	margin-left: 180px;
	margin-bottom: 20px;
}
</style>

</head>
<body class="bg-primary-subtle">
	<% StoreInfo info = (StoreInfo) session.getAttribute("carInfo"); %>
	<nav class="navbar text-bg-primary navbar-expand-lg">
		<div class="container-fluid container">

			Taxi Company
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
				aria-controls="navbarNavAltMarkup" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
		</div>
		<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
			<ul class="navbar-nav">
				<li class="nav-item "><a href="index.jsp" class="nav-link">Home</a></li>
				<li class="nav-item"><a href="#" class="nav-link">Content</a></li>
				<li class="nav-item"><a href="show" class="nav-link">ShowAll</a></li>
				<li class="nav-item"><a href="#" class="nav-link">About</a></li>
			</ul>
		</div>
	</nav>
	<div class="locate_form text-bg-warning p-3">
	<div class="title-location alert alert-success">Hello Everyone!!!</div>
	<div class="location bg-info-subtle border border-primary">
		<table class="table table-striped">
			<thead class="table-dark">
				<tr>
					<td>Car No:</td>
					<td>Name</td>
					<td>Travel Information</td>
				</tr>
			</thead>

			<tbody class="table-group-divider">
		<% if( null != info ) { 
				for(CarInfo list : info.getList()) {
		%>
				<tr>
					<td><%=list.getCarNo() %></td>
					<td><%=list.getCarName()%></td>
					<td><%=list.getTravelInfo()%></td>
				</tr>
		<%
				}
				}%>
			</tbody>

		</table>
  	<form action="duty">
			<div class="mb-3 input-group">
				<span class="input-group-text">AB ~</span> <input type="text"
					class="form-control " name="car_no" placeholder="Car No:">
			</div>
			<div class="mb-3 input-group">
				<span class="input-group-text">Car Name:</span> <input type="text"
					class="form-control " name="car_name" placeholder="Car Name:">
			</div>
			<div class="mb-3 input-group">
				<span class="input-group-text">Travel Info:</span> <input
					type="text" class="form-control" name="travel_info" placeholder="Travel Info:">
			</div>
			<div class="b-location">
				<button type="submit" class="btn btn-success">Submit</button>
			</div>
	</form>
	</div>
	</div>
</body>
</html>