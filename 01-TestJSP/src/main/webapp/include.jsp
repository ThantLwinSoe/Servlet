<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Include Jsp</title>
<style type="text/css">
	.box_frame {
		display: flex;
		height: 100px;
		background-color: red;
	}
	.box_one {
		display: flex;
		height: 100px;
		width: 200px;
		background-color: green;
		line-height: 100px;   
 		align-content: center;
 		justify-content: center;
		
	}
</style>
</head>
<body>
		
		<div class="box_frame">
			<div class="box_one">Box One</div>
			<div class="box_two">Box Two</div>
			<div class="box_three">Box Three</div>
		</div>
	
</body>
</html>