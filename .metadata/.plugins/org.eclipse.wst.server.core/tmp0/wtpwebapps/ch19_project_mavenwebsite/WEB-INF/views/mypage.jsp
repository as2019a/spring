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
<title>Maven Compay My Page</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<style>
	.jumbotron{
		margin-bottom: 5px;
	}
	
	.navbar{
		font-size:large;
	}
	
	li > a{
		color:orange;
	}
	
	#mypagedark{
		text-align:center;
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
		<h1 class="text-center"><i class='fab fa-creative-commons-by' style='font-size:50px;color:silver;'></i> Maven Compay My Page</h1>
	</div>
	<div class="navbar navbar-expand-sm bg-info navbar-dark">
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
					<a class="navbar-brand" href="#">Maven Company My Page</a>
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
			<div class="col-lg-4">
				<video src="">YouTube</video>
				 <h1>CEO Lee Womens My Page</h1>
			  <p>The Maven Company Women CEO LEE</p>
			  <blockquote class="blockquote">
			    <p>For 48 years, WWF has been protecting the future of nature. The world's leading conservation organization, WWF works in 100 countries and is supported by 1.2 million members in the United States and close to 5 million globally.</p>
			    <footer class="blockquote-footer">From WWF's website</footer>
			  </blockquote>
			</div>
			<div class="col-lg-4">
				<h2 class="bg-dark text-white" id="mypagedark">MY PAGE</h2>
				<abbr>My Page에서는 직원 본인 관리페이지 입니다.</abbr>
				
			</div>
			<div class="col-lg-4">
							
			</div>
		</div>
	</div>
	<div class="footer">
		Maven Company Made By <a href="/footerceo">ceo</a>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
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