<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
<title>Test Request Parameter</title>
<style type="text/css">
	.uForm {
		width: 250px;
	}
	.uBottom {
		width: 100px;
		margin-left: 40px;
	}
	.box {
		width: 300px;
		height: 300px;
	}
	.boxOne,.boxTwo{
		margin: 20px auto;
	/*	background-color: rgba(97,54,89,0.4);  */
		width: 130px;
		height: 30px;
		border-radius: 30px;
	}
</style>
</head>
<body>
	<h1>Test the Request Parameter</h1>
	<form action="ok">
		<label for="user" class="form-label">Name:</label>
		<input type="text" name="user_name" placeholder="Enter your name"
		 class="form-control uForm"/><br />
		<label for="user" class="form-label">Course:</label>
		<input type="text" name="course" placeholder="Enter your course"
		class="form-control uForm"/><br />
		<button type="submit" class="btn btn-primary uBottom">Ok</button>
	</form>
	
	<% if(null != request.getParameter("aName") || null != request.getParameter("aCourse")) { %>
	
	<div class="box">
		<div class="d-xl-inline-flex bg-primary-subtle badge text-wrap text-primary boxOne "><%=request.getParameter("aName")%></div>
		<div class="d-xl-inline-flex bg-info badge bg-secondary text-primary text-wrap boxTwo"><%=request.getParameter("aCourse")%></div>
	</div>
	
	<% } %>
</body>
</html>