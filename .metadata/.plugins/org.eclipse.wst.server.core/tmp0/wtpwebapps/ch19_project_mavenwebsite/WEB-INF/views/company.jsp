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
<title>Maven Company Page</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<style>
	.jumbotron{
		margin-bottom: 5px;
	}
	
	.sidebar {
	  height: 100%;
	  width: 0;
	  position: fixed;
	  z-index: 1;
	  top: 0;
	  left: 0;
	  background-color: #111;
	  overflow-x: hidden;
	  transition: 0.5s;
	  padding-top: 60px;
	}

	.sidebar a {
	  padding: 8px 8px 8px 32px;
	  text-decoration: none;
	  font-size: 25px;
	  color: #818181;
	  display: block;
	  transition: 0.3s;
	}
	
	.sidebar a:hover {
	  color: #f1f1f1;
	}
	
	.sidebar .closebtn {
	  position: absolute;
	  top: 0;
	  right: 25px;
	  font-size: 36px;
	  margin-left: 50px;
	}
	
	.openbtn {
	  font-size: 20px;
	  cursor: pointer;
	  background-color: #111;
	  color: white;
	  padding: 10px 15px;
	  border: none;
	}
	
	.openbtn:hover {
	  background-color: #444;
	}
	
	#main {
	  transition: margin-left .5s;
	  padding: 16px;
	}
	
	/* On smaller screens, where height is less than 450px, 
	change the style of the sidenav (less padding and a smaller font size) */
	@media screen and (max-height: 450px) {
	  .sidebar {padding-top: 15px;}
	  .sidebar a {font-size: 18px;}
	}
	
	.footer{
		height: 100px;
		line-height: 100px;
		background-color: #444;
		color: white;
		text-align: center;
		margin-top: 200px;
	}
	
	.mySlides {display: none}
	img {vertical-align: middle;}
	
	/* Slideshow container */
	.slideshow-container {
	  max-width: 1000px;
	  position: relative;
	  margin: auto;
	}
	
	/* Next & previous buttons */
	.prev, .next {
	  cursor: pointer;
	  position: absolute;
	  top: 50%;
	  width: auto;
	  padding: 16px;
	  margin-top: -22px;
	  color: white;
	  font-weight: bold;
	  font-size: 18px;
	  transition: 0.6s ease;
	  border-radius: 0 3px 3px 0;
	  user-select: none;
	}

	/* Position the "next button" to the right */
	.next {
	  right: 0;
	  border-radius: 3px 0 0 3px;
	}
	
	/* On hover, add a black background color with a little bit see-through */
	.prev:hover, .next:hover {
	  background-color: rgba(0,0,0,0.8);
	}
	
	/* Caption text */
	.text {
	  color: #f2f2f2;
	  font-size: 15px;
	  padding: 8px 12px;
	  position: absolute;
	  bottom: 8px;
	  width: 100%;
	  text-align: center;
	}
	
	/* Number text (1/3 etc) */
	.numbertext {
	  color: #f2f2f2;
	  font-size: 12px;
	  padding: 8px 12px;
	  position: absolute;
	  top: 0;
	}
	
	/* The dots/bullets/indicators */
	.dot {
	  cursor: pointer;
	  height: 15px;
	  width: 15px;
	  margin: 0 2px;
	  background-color: #bbb;
	  border-radius: 50%;
	  display: inline-block;
	  transition: background-color 0.6s ease;
	}
	
	.active, .dot:hover {
	  background-color: #717171;
	}
	
	/* Fading animation */
	.fade {
	  -webkit-animation-name: fade;
	  -webkit-animation-duration: 1.5s;
	  animation-name: fade;
	  animation-duration: 1.5s;
	}
	
	@-webkit-keyframes fade {
	  from {opacity: .4} 
	  to {opacity: 1}
	}
	
	@keyframes fade {
	  from {opacity: .4} 
	  to {opacity: 1}
	}
	
	/* On smaller screens, decrease text size */
	@media only screen and (max-width: 300px) {
	  .prev, .next,.text {font-size: 11px}
	}
</style>
</head>
<body>
	<div class="jumbotron">
		<h1 class="text-center">Maven Company Page</h1>
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
				<a class="navbar-brand" href="#">Maven Company company Page</a>
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
		<div class="col-lg-3" style="padding-left:16px">
			<div id="mySidebar" class="sidebar">
				<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
				<a href="/side/ceo"><i class='fas fa-street-view' style='font-size:24px;color:#6ab04c;'></i> CEO</a>
				<a href="/side/vision"><i class="fa fa-dot-circle-o" style="font-size:24px;color:#54a0ff;"></i> Vision</a>
				<a href="/side/companygroup"><i class='fas fa-route' style='font-size:24px;color:#4b7bec;'></i> Company Group</a>
				<a href="/side/brands"><i class='fas fa-dove' style='font-size:24px;color:#44bd32;'></i> Maven Company Brand</a>
				<a href="/side/careers"><span class="glyphicon glyphicon-globe" style="font-size:24px;color:#f1c40f;"></span> Careers</a>
				<a href="/side/csv"><i class='fas fa-award' style='font-size:24px;color:#34e7e4;'></i> Company CSV</a>
				<a href="/side/companysecurity"><i class='fas fa-shield-alt' style='font-size:24px;color:red;'></i> Company Security</a>
			</div>
			<div id="main">
			  <button class="openbtn" onclick="openNav()">&#9776; Toggle Sidebar</button> 
			  <h2>Maven Company</h2>
			  <p>maven Web Site sidebar</p>
			</div>
		</div>
		<div class="col-lg-7" style="padding-left:16px">
			<h2><i class="fa fa-ge" style='font-size:24px;color:orange;'></i> Maven Company</h2>
			<div class="slideshow-container">
				<div class="mySlides fade">
				  <div class="numbertext">1 / 3</div>
				  <img src="img_nature_wide.jpg" style="width:100%">
				  <div class="text">Caption Text</div>
				</div>
				
				<div class="mySlides fade">
				  <div class="numbertext">2 / 3</div>
				  <img src="img_snow_wide.jpg" style="width:100%">
				  <div class="text">Caption Two</div>
				</div>
				
				<div class="mySlides fade">
				  <div class="numbertext">3 / 3</div>
				  <img src="img_mountains_wide.jpg" style="width:100%">
				  <div class="text">Caption Three</div>
				</div>
				
				<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
				<a class="next" onclick="plusSlides(1)">&#10095;</a>
				
				</div>
				<br>
				
				<div style="text-align:center">
				  <span class="dot" onclick="currentSlide(1)"></span> 
				  <span class="dot" onclick="currentSlide(2)"></span> 
				  <span class="dot" onclick="currentSlide(3)"></span> 
				</div>
			<p>
				안녕하세요 저희 메이븐 주식회사 사이트에 오신것을 환영합니다.
				저희 메이븐 주식회사는 프로그램 개발하는 기업으로서 전 직원들이 불철주야 노력하고 있습니다.
			</p>
			<p>
				Welcome to our Maven site.
				As a company that develops programs, Maven Co., Ltd. strives to be a good company.
			</p>
			
		</div>
		<div class="col-lg-2">
			<h4>Maven Company CEO Blog&Site</h4>
				<ul>
					<li><a href="/rightside/ceoblog" class="btn btn-primary" data-toggle="tooltip" data-placement="top" title="Maven Top CEO Blog" style="font-style:italic;font-size:large;color:#8BC34A;"><i class='fas fa-cloud-sun' style='font-size:24px;color:lime;'></i> Company CEO Blog</a></li>
					<li><a href="https://aws.amazon.com/ko" class="btn btn-warning" data-toggle="tooltip" data-placement="top" title="AWS Web Site" style="font-style:italic;font-size:large;color:white;"><i class='fab fa-aws' style='font-size:24px;color:lime;'></i> AWS Site</a></li>
					<li><a href="https://git-scm.com/" class="btn btn-warning" data-toggle="tooltip" data-placement="top" title="Git Web Site" style="font-style:italic;font-size:large;color:white;"><i class='fab fa-git' style='font-size:24px;color:lime;'></i> Git Site</a></li>
					<li><a href="https://github.com/" class="btn btn-warning" data-toggle="tooltip" data-placement="top" title="github Web Site" style="font-style:italic;font-size:large;color:white;"><i class='fab fa-github' style='font-size:24px;color:lime;'></i> Github Site</a></li>
					<li><a href="http://tomcat.apache.org/" class="btn btn-warning" data-toggle="tooltip" data-placement="top" title="Tomcat Web Site" style="font-style:italic;font-size:large;color:white;"><i class='fab fa-hubspot' style='font-size:24px;color:lime;'></i> Tomcat Site</a></li>
					<li><a href="https://code.visualstudio.com/" class="btn btn-warning" data-toggle="tooltip" data-placement="top" title="Code Visualstudio Web Site" style="font-style:italic; font-size:medium;color:white;"><i class='fas fa-laptop-code' style='font-size:24px;color:lime;'></i> Code Visualstudio Site</a></li>
				</ul>
			<h4>공공사이트</h4>
				<ul>
					<li><a href="https://www.mma.go.kr/index.do" class="btn btn-info" ><i class='fas fa-certificate' style='font-size:24px'></i> 병무청</a></li>
					<li><a href="https://www.yebigun1.mil.kr/" class="btn btn-info" ><i class='fas fa-feather-alt' style='font-size:24px'></i> 예비군</a></li>
					<li><a href="http://www.safekorea.go.kr/idsiSFK/neo/sfk/cs/contents/civil_defense/SDIJKM1201.html?menuSeq=358" class="btn btn-info"><i class='fas fa-map-pin' style='font-size:24px'></i> 민방위</a></li>
					<li><a href="http://www.safekorea.go.kr/idsiSFK/neo/main/main.html" class="btn btn-info" ><i class='fas fa-fire-extinguisher' style='font-size:24px'></i> 국가재난안전포털</a></li>
					<li><a href="http://www.kma.go.kr/" class="btn btn-info" ><i class='fas fa-temperature-low' style='font-size:24px'></i> 기상청</a></li>
					<li><a href="http://www.moel.go.kr/index.do" class="btn btn-info" ><i class='far fa-edit' style='font-size:24px'></i> 고용노동부</a></li>
					<li><a href="https://www.nts.go.kr/" class="btn btn-info" ><i class='fas fa-won-sign' style='font-size:24px'></i> 국세청</a></li>
					<li><a href="http://www.scourt.go.kr/scourt/index.html" class="btn btn-info" ><i class='far fa-file-pdf' style='font-size:24px'></i> 법원</a></li>
					<li><a href="https://www.airport.kr/ap/ko/index.do" class="btn btn-info" ><i class='fas fa-plane' style='font-size:24px'></i> 인천국제공항</a></li>
					<li><a href="http://www.airport.co.kr/gimpo/main.do" class="btn btn-info" ><i class='fas fa-plane-departure' style='font-size:24px'></i> 김포공항</a></li>
				</ul>
	    <div class="container">
		  <h5 style="color:#273c75;">Maven Campanys Modal Page</h5>
		  <!-- Trigger the modal with a button -->
		  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal" style="font-style:italic;font-size:small;color:#0277BD;"><i class='fas fa-crosshairs' style='font-size:24px;color:#1565C0;'></i> Maven Company Models</button>
		
		  <!-- Modal -->
		  <div class="modal fade" id="myModal" role="dialog">
		    <div class="modal-dialog">
		    
		      <!-- Modal content-->
		      <div class="modal-content">
		        <div class="modal-header">
		          <button type="button" class="close" data-dismiss="modal">&times;</button>
		          <h4 class="modal-title">Maven Company Title</h4>
		        </div>
		        <div class="modal-body">
		          <p>...</p>
		        </div>
		        <div class="modal-footer">
		          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		        </div>
		      </div>
		    </div>
		  </div>
		</div>
		<div class="container">
		  <h5 style="color:#7CB342;">Maven Campanys Modal Page</h5>
		  <!-- Trigger the modal with a button -->
		  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal" style="font-style:italic;font-size:small;color:#0277BD;"><i class='fas fa-crosshairs' style='font-size:24px;color:#1565C0;'></i> Maven Company Bibles</button>
		
		  <!-- Modal -->
		  <div class="modal fade" id="myModal" role="dialog">
		    <div class="modal-dialog">
		    
		      <!-- Modal content -->
		      <div class="modal-content">
		        <div class="modal-header">
		          <button type="button" class="close" data-dismiss="modal">&times;</button>
		          <h4 class="modal-title">Maven Company bible</h4>
		        </div>
		        <div class="modal-body">
		          <p>...</p>
		        </div>
		        <div class="modal-footer">
		          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		        </div>
		      </div>
		    </div>
		  </div>
		</div>
		<div class="container">
		  <h5 style="color:#3dc1d3;">Maven Campanys Modal Page</h5>
		  <!-- Trigger the modal with a button -->
		  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal" style="font-style:italic;font-size:small;color:#0277BD;"><i class='fas fa-crosshairs' style='font-size:24px;color:#1565C0;'></i> Maven Company Models</button>
		
		  <!-- Modal -->
		  <div class="modal fade" id="myModal" role="dialog">
		    <div class="modal-dialog">
		    
		      <!-- Modal content-->
		      <div class="modal-content">
		        <div class="modal-header">
		          <button type="button" class="close" data-dismiss="modal">&times;</button>
		          <h4 class="modal-title">Maven Company Title</h4>
		        </div>
		        <div class="modal-body">
		          <p>...</p>
		        </div>
		        <div class="modal-footer">
		          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		        </div>
		      </div>
		    </div>
		  </div>
		</div>
			<div class="row">
				
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
		function openNav() {
		 	document.getElementById("mySidebar").style.width = "250px";
			document.getElementById("main").style.marginLeft = "250px";
		}

		function closeNav() {
			document.getElementById("mySidebar").style.width = "0";
			document.getElementById("main").style.marginLeft= "0";
		}
		
		var slideIndex = 1;
		showSlides(slideIndex);

		function plusSlides(n) {
		  showSlides(slideIndex += n);
		}

		function currentSlide(n) {
		  showSlides(slideIndex = n);
		}

		function showSlides(n) {
		  var i;
		  var slides = document.getElementsByClassName("mySlides");
		  var dots = document.getElementsByClassName("dot");
		  if (n > slides.length) {slideIndex = 1}    
		  if (n < 1) {slideIndex = slides.length}
		  for (i = 0; i < slides.length; i++) {
		      slides[i].style.display = "none";  
		  }
		  for (i = 0; i < dots.length; i++) {
		      dots[i].className = dots[i].className.replace(" active", "");
		  }
		  slides[slideIndex-1].style.display = "block";  
		  dots[slideIndex-1].className += " active";
		}
		
		$(function(){
		    $("#mavenmodelsone").click(function(){
		        $('div.modal').modal();
		    })
		})
	</script>
</body>
</html>