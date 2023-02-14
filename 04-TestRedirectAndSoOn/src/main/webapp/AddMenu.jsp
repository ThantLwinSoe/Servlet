<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Books Add Menu</title>
<style type="text/css">
	.table {
		width: 500px;
		background-color: #772199;
		border-radius: 10px;
	}
	.home_buttom {
		margin-top: 50px;
	}
	a {
		margin-right: 50px;
	}
</style>

</head>
<body>
	<h1>Hello Everything is Ok!!!</h1>
	
	<div>
		<form action="addBook">
			<table class="table">
				<tr>
					<td>Name</td>
					<td>Quantity</td>
					<td>Price</td>
				</tr>
				<tr>
					<td><input type="text" name="bookName" placeholder="Enter Book Name"></td>
					<td><input type="text"  name="quantity" placeholder="Enter Quantity" /></td>
					<td><input type="text" name="price" placeholder="Enter Prices" /></td>
					<td><button type="submit">ADD</button></td>
				</tr>
			</table>
		</form>
	</div>
	<div class="home_buttom">
		<a href="index.jsp">Home</a>
		<a href="StoreBooks.jsp">ShowInfo</a>
	</div>
	
</body>
</html>