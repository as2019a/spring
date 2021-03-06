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
<title>Maven Home page</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<style>
	.jumbotron{
		margin-bottom: 5px;
	}
	
	.footer{
		height: 100px;
		line-height: 100px;
		background-color: #444;
		color: white;
		text-align: center;
		margin-top: 200px;
	}
</style>
</head>
<body>
	<div class="jumbotron">
		<h1 class="text-center">Main Page</h1>
	</div>
	<div class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
					<button type="button" 
							class="navbar-toggle"
							data-toggle="collapse"
							data-target="#navbar">
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>		
					</button>
					<a class="navbar-brand" href="#">Maven Company Main Page</a>
	    		</div>
	    	<div>
	      	<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">	
					<li><a href="/main">main</a></li>
					<sec:authorize access="!isAuthenticated()">
					<li><a href="/user/signin">signin</a></li>
					</sec:authorize>
					<sec:authorize access="isAuthenticated()">
					<li><a href="/user/signup">signup</a></li>
					</sec:authorize>
					<sec:authorize access="isAuthenticated()">
					<li><a href="/board/list">board</a></li>
					</sec:authorize>
					<sec:authorize access="isAuthenticated()">
					<li><a href="/mypage">mypage</a></li>
					</sec:authorize>
					<sec:authorize access="isAuthenticated()">
					<li><a href="/address">address</a></li>
					</sec:authorize>
					<sec:authorize access="isAuthenticated()">
					<li><a href="/cafe">cafe</a></li>
					</sec:authorize>
					<sec:authorize access="isAuthenticated()">
					<li><a href="/calendar">calendar</a></li>
					</sec:authorize>
					<sec:authorize access="isAuthenticated()">
					<li><a href="/worlduniversity">worlduniversity</a></li>
					</sec:authorize>
					<sec:authorize access="isAuthenticated()">
					<li><a href="/etc">etc</a></li>
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
			<div class="search-container">
		    <form action="/action_page.php">
		      <input type="text" placeholder="Search.." name="search">
		      <button type="submit"><i class="fa fa-search"></i></button>
		    </form>
		  </div>
		</div>
	</div>
	<div class="container">
		<div class="row">
				<div class="col-lg-10">
					<div class="container">
						<div class="dropdown">
						  <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">New Toggle
						  <span class="caret"></span></button>
						  <ul class="dropdown-menu">
						    <li><a href="/tog/togglecompany" style="font-size:32px;"><i class='far fa-building' style='font-size:36px'></i>기업 안내</a></li>
						  </ul>
						</div>
					</div>
				<div class="col-lg-9" style="padding-left:16px">
					<h2><i class="fa fa-ge" style='font-size:24px;color:orange;'></i> Maven Home page</h2>
					<button style='font-size:24px;color:purple;' type="submit" formmethod="get" ><a href="/company">Maven company <i class="fa fa-ge"></i></a></button>
					<p><i class='fas fa-globe' style='color:blue;'></i> Maven is a company that develops and operates IT programs.</p>
					<p><i class='fas fa-broadcast-tower'style='color:green;'></i> Welcome to the Maven corporate site.</p>
					<p><a href="/etiquette"><i class="fa fa-bullhorn" style="font-size:24px;color:#44bd32;"></i> Company etiquette</a></p>
					<p><a href="/development"><i class="fa fa-database" style="font-size:24px;color:olive;"></i> Company Web Development List</a></p>
					<p><a href="/othersite"><i class='fas fa-sitemap' style='font-size:24px;color:#833471;'></i> Company Other site</a></p>
					<div class="container">
					  <h2><i class='fas fa-database' style='font-size:24px;color:buttonface;'></i> Maven Company DataBase</h2>
					  <p>Maven Company DataBase collapsible</p>
					  <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo"><i class='fas fa-database' style='font-size:12px;color:fuchsia;'></i> Maven Company DataBase</button>
					  <div id="demo" class="collapse">
					    <ul>
					    	<li style='font-size:medium;'>Signup</li>
					    	<li style='font-size:medium;'>Signin(users)</li>
					    	<li style='font-size:medium;'>board</li>
					    	<li style='font-size:medium;'>mypage</li>
					    	<li style='font-size:medium;'>address</li>
					    	<li style='font-size:medium;'>manger(게시판관리자페이지)</li>
					    	<li style='font-size:medium;'>admin(관리자페이지)</li>
					    </ul>
					  </div>
					</div>
				</div>
				<div class="col-lg-3">
							
				</div>
			</div>
		</div>
	</div>
	<div class="footer">
		Maven Company Made By <a href="/footerceo">ceo</a>
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