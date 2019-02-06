<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" 
 	  content="width=device-width, initial-scale=1">
<title>Hello</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
<style>
	h1{
		padding: 10px;
		margin: 0px;
		color: orange;
	}
	h1:hover {
		border: 2px solid black;
		outline: #4CAF50 solid 2px;
		margin: auto; 
		padding: 10px;
		background-color: orange;
		color: white; 
		font-size: 35px;
		text-shadow: 2px 2px navy;
		URL: ("https://www.naver.com");
	}
</style>
</head>
<body>
	<h1 class="text-center">Spring Hello</h1>
	<h2 class="text-center">${msg }</h2>
	<form action="/hello/sayhello" method="post">
		<input type="text" name="name" />
		<button type="submit">전송</button>
	</form>
	<div class="row">
		<div class="col-sm-6 col-sm-offset-3">
			<table class="table table-striped">
				<thead class="ta">
					<tr>
						<th>코드</th> <!-- code -->
						<th>회사이름</th> <!-- company name -->
						<th>직종</th> <!-- occupation -->
						<th>주요사업</th> <!-- major bussiness -->
						<th>직원수</th> <!-- Number of employees -->
					</tr>			
				</thead>		
			</table>		
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>