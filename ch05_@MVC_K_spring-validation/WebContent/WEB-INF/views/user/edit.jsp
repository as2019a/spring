<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" 
 	  content="width=device-width, initial-scale=1">
<title></title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
<style>
	
</style>
</head>
<body>
	<div class="container">
		<h3 class="text-center">User Edit</h3>
		<div class="row">
			<div class="col-sm-6 col-sm-offset-3">
				<form action="/user/edit" method="post">
					<div class="form-group">
						<%-- <input type="hidden" name="id" value="${user.id }" /> --%>
						<div class="input-group">
							<p>${user.id }</p>
						</div>
					</div>
					<div class="form-group">	
						<input type="password" class="form-control" 
								name="password" 
								value="${user.password }"
								placeholder="insert password..."/>
					</div>
					<div class="form-group">
						<input type="text" class="form-control" 
								name="name" placeholder="insert name..."
								value="${user.name }"/>
					</div>
					<div class="form-group">
						<button class="btn btn-default btn-block btn-info" type="submit">수정</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>