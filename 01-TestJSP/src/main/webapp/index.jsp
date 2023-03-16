<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hello JSP</title>
<style type="text/css">

	body{
		margin: 0;
	}
	
	header {
		height: 100px;
		background-color: #2a65C2;
		padding: 0;
	}
	.main_word{
		font-size: 34px;
		margin-left: 10px;
		margin-right: 1000px;	
		color: #EEEEEE;	
	}
	.second_word {
		display: inline-flex;
		list-style-type: none;
	}
	.second_word >	li{
		display: inline-flex;
		font-size:28px;
		margin-right: 50px;
		margin-top: 10px;
	}
	.second_word > li > a {
		text-decoration: none;
		color: #EEEEEE;
	}
	.active {
	}
	a:hover {
	background-color: #7a350D;
	border-radius: 20%;
`	}

	.active{
		background-color: #7a350D;
	}
	
</style>
</head>
<body>
	<header>
		<div class="main_word second_word">JSP Header</div>
		<div class="second_word">
			<ul class="second_word">
				<li><a href="index.jsp" class="active">Home</a></li>
				<li><a href="PageOne.jsp">Page One</a></li>
				<li><a href="About.jsp">About</a></li>
			</ul>
		</div>
	</header>
</body>
</html>