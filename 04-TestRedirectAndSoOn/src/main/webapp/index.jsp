<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test Book Shop</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" type="text/css" />
<style>
	.my_nav {
		margin: 10px 10px;
		background-color: #244576;
	}
	.book_title {
		display: inline;
		background-color: red;
		
	}
	.info,.show_books {
		background-color: blue;
	}
</style>
</head>
<body>
	<nav class="my_nav navbar text-bg-info">
		<div class="book_title">Welcome Books Lovers</div>
		<div class="info">Info</div>
		<div class="add_books"><a href="contOne">Add Books</a></div>
		<div class="show_books">Show Books</div>
	</nav>
</body>
</html>