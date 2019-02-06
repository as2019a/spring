<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" 
 	  content="width=device-width, initial-scale=1">
<title>User</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
<style>
	h3{
		padding: 22px;
		margin: 2px;
		color: green;
		background-color: orange;
	}
	h3:hover{
		padding: 22px;
		margin: 2px;
		color: white;
		background-color: orange;
	}
	.table>thead{
		color: navy;
	}
	.table>tbody{
		color: blue;
	}
</style>
</head>
<body>
	<div class="container">
		<h3 class="text-center">User List</h3>
		<div class="row">
			<div class="col-sm-6 col-sm-offset-3">
				<form action="/user/add" method="post">
					<div class="form-group">
						<input type="text" class="form-control" 
								name="id" placeholder="insert id..."/>
					</div>
					<div class="form-group">	
						<input type="password" class="form-control" 
								name="password" placeholder="insert password..."/>
					</div>
					<div class="form-group">
						<input type="text" class="form-control" 
								name="name" placeholder="insert name..."/>
					</div>
					<div class="form-group">
						<button class="btn btn-default btn-block" type="submit">추가</button>
					</div>
				</form>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-6 col-sm-offset-3">
				<table class="table table-striped">
					<thead class="ta">
						<tr>
							<th>ID</th>
							<th>PASSWORD</th>
							<th>NAME</th>
						</tr>
					</thead>
					<tbody class="ty">
						<c:forEach var="user" items="${userList }">
							<tr>
								<td>${user.id }</td>
								<td>${user.password }</td>
								<td>${user.name }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>