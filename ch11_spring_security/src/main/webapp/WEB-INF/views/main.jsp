<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" 
 	  content="width=device-width, initial-scale=1">
<title>Main Page</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
</head>
<body>
	<div class="jumbotron">
		<h1 class="text-center">Main Page</h1>
	</div>
	<div class="navbar navbar-inverse">
		<div class="container-fluid">
			<ul class="nav navbar-nav">
				<li><a href="/main">main</a></li>
				<sec:authorize access="!isAuthenticated()">
				<li><a href="/user/signin">signin</a></li>
				</sec:authorize>
				<sec:authorize access="isAuthenticated()">
				<li><a href="/board/list">board</a></li>
				</sec:authorize>
				<sec:authorize access="isAuthenticated()">
				<li><a href="/mypage">mypage</a></li>
				</sec:authorize>
				<sec:authorize access="hasRole('ROLE_MANAGER')">
				<li><a href="/manager">manager</a></li>
				</sec:authorize>
				<sec:authorize access="hasRole('ROLE_ADMIN')">
				<li><a href="/admin">admin</a></li>
				</sec:authorize>
				<sec:authorize access="isAuthenticated()">
				<li><a href="javascript:signout()">signout</a></li>
				</sec:authorize>
			</ul>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<script>
		function signout(){
			var form = document.createElement("form");
			form.method="post";
			form.action="/user/signout";
			var input = document.createElement("input");
			input.type="hidden";
			input.name="${_csrf.parameterName}";
			input.value="${_csrf.token}";
			form.appendChild(input);
			document.body.appendChild(form);
			form.submit();
		}
	</script>
</body>
</html>