<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" 
 	  content="width=device-width, initial-scale=1">
<title>Maven Company Address Page</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
<style>
	.jumbotron{
		margin-bottom: 5px;
	}
	
	.jumbotron:hover{
		background-color:yellow;
	}
	
	#center:hover{
		color:orange;
	}
	
	#center{
		font-size:x-large;
		color:green;
	}
	
	#mca{
		text-align:center;
		color:blue;
		border-bottom:1px;
	}
	
	table{
		border-bottom-style:solid;
	}
	
	th, td {
		text-align:center;
    	border: 1px solid #444444;
  	}
	
	.navbar{
		font-size:large;
	}
	
	.tablink {
	  background-color: #555;
	  color: white;
	  float: left;
	  border: none;
	  outline: none;
	  cursor: pointer;
	  padding: 14px 16px;
	  font-size: 17px;
	  width: 25%;
	}
	
	.tablink:hover {
	  background-color: #777;
	}
	
	/* Style the tab content */
	.tabcontent {
	  color: white;
	  display: none;
	  padding: 50px;
	  text-align: center;
	}

	#London {background-color:red;}
	#Paris {background-color:green;}
	#Tokyo {background-color:blue;}
	#Oslo {background-color:orange;}
	
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
		<h1 class="text-center" id="center"><i class='fas fa-rss' style='font-size:25px'></i> Maven Company Address Page</h1>
	</div>
	<div class="navbar navbar-expand-sm bg-light">
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
	<div class="row">
	  <div class="col-lg-4">
	  	<h3 style="text-align:center;">FileUpload-Test</h3>
		<input type="file" class="form-control-file border">
		
		<h2 style="font-size:x-large;text-align:center;color:olive;speak:spell-out;content:open-quote; ">
		Address Puls</h2>
	  </div>
	  <div class="col-lg-4">
	  	<h3 id="mca">Moven Company 직원 Address List</h3>
	  	<table>	
	  		<tr>
	  			<th>ID</th>
	  			<th>NAME</th>
	  			<th>PHONE</th>
	  			<th>ADDR</th>
	  			<th>EMALL</th>
	  			<th>GENDER</th>
	  		</tr>
	  		<tbody>
	  		<c:forEach var="address" items="${AddressList }" varStatus="status">
		  		<tr style="cursor:pointer;"
					onclick="location.href='/address?id=${address.user_id}'">
		  			<td>${address.user_id }</td>
		  			<td>${address.signup_name }</td>
		  			<td>${address.signup_phone }</td>
		  			<td>${address.signup_addr }</td>
		  			<td>${address.signup_email }</td>
		  			<td>${address.gender }</td>
		  		</tr>
	  		</c:forEach>
	  		</tbody>
	  	</table>
	  </div>
	  <div class="col-lg-4">
	  	<h2 style="text-align:center;color:olive;">All</h2>
	  	<h3>Spiner</h3>
	  	<div class="spinner-border text-danger"></div><p style="color:red;">loging...</p>
	  	<h3>Grow</h3>
	  	<div class="spinner-grow text-danger">
	  		<p style="font-size:x-large;">Address</p>
	  	</div><p style="color:red;">loging...</p>
	  	
	  	<h2 style="text-align:center;font-size:x-large;">City is Color Menu</h2>

		<div id="London" class="tabcontent">
		  <h1>London</h1>
		  <p>London is the capital city of England.</p>
		</div>
		
		<div id="Paris" class="tabcontent">
		  <h1>Paris</h1>
		  <p>Paris is the capital of France.</p> 
		</div>
		
		<div id="Tokyo" class="tabcontent">
		  <h1>Tokyo</h1>
		  <p>Tokyo is the capital of Japan.</p>
		</div>
		
		<div id="Oslo" class="tabcontent">
		  <h1>Oslo</h1>
		  <p>Oslo is the capital of Norway.</p>
		</div>
		
		<button class="tablink" onclick="openCity('London', this, 'red')" id="defaultOpen">London</button>
		<button class="tablink" onclick="openCity('Paris', this, 'green')">Paris</button>
		<button class="tablink" onclick="openCity('Tokyo', this, 'blue')">Tokyo</button>
		<button class="tablink" onclick="openCity('Oslo', this, 'orange')">Oslo</button>
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
		
		function openCity(cityName,elmnt,color) {
			  var i, tabcontent, tablinks;
			  tabcontent = document.getElementsByClassName("tabcontent");
			  for (i = 0; i < tabcontent.length; i++) {
			    tabcontent[i].style.display = "none";
			  }
			  tablinks = document.getElementsByClassName("tablink");
			  for (i = 0; i < tablinks.length; i++) {
			    tablinks[i].style.backgroundColor = "";
			  }
			  document.getElementById(cityName).style.display = "block";
			  elmnt.style.backgroundColor = color;

		}
		// Get the element with id="defaultOpen" and click on it
		document.getElementById("defaultOpen").click();
	</script>
</body>
</html>