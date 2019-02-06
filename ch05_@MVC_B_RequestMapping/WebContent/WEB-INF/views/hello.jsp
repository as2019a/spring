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
		padding: 10px;
		margin: 0px;
		background-color: orange;
		color: white; 
	}
</style>
</head>
<body>
	<h1 class="text-center">${msg }</h1>
	<form action="/hello/sayhello" method="post">
		<input type="text" name="name" />
		<button type="submit">전송</button>
	</form>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>