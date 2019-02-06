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
<title>Maven Company Membership Site</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<style>
	* {
	  box-sizing: border-box;
	}
	
	body {
	  margin: 0;
	  font-family: Arial, Helvetica, sans-serif;
	}
	
	.jumbotron{
		margin-bottom: 5px;
		text-align: center;
	}
	
	#membershipone {padding-top:90px;height:900px;color: #fff; background-color: #B2EBF2;}
	
	table {
	  border-collapse: collapse;
	  border-spacing: 0;
	  width: 100%;
	  border: 1px solid #ddd;
	  color: blue;
	  font: medium;
	}
	
	th, td {
	  text-align: center;
	  padding: 16px;
	}
	
	th:first-child, td:first-child {
	  text-align: left;
	}
	
	tr:nth-child(even) {
	  background-color: #f2f2f2
	}
	
	#check {
	  color: green;
	}
	
	#close {
	  color: red;
	}
	
	#kaone {
		color:orange;
	}
	
	#quote {
		color:blue;
	}
	
	.topnav {
	  overflow: hidden;
	  background-color: #333;
	}
	
	.topnav a {
	  float: left;
	  display: block;
	  color: #f2f2f2;
	  text-align: center;
	  padding: 14px 16px;
	  text-decoration: none;
	  font-size: 17px;
	}
	
	.topnav a:hover {
	  background-color: #ddd;
	  color: black;
	}
	
	.active {
	  background-color: #4CAF50;
	  color: white;
	}
	
	.topnav .icon {
	  display: none;
	}
	
	@media screen and (max-width: 600px) {
	  .topnav a:not(:first-child) {display: none;}
	  .topnav a.icon {
	    float: right;
	    display: block;
	  }
	}
	
	@media screen and (max-width: 600px) {
	  .topnav.responsive {position: relative;}
	  .topnav.responsive .icon {
	    position: absolute;
	    right: 0;
	    top: 0;
	  }
	  .topnav.responsive a {
	    float: none;
	    display: block;
	    text-align: left;
	  }
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
	    <h1>Maven Company Membership Page</h1> 
	    <p>MAVEN COMPANY 기업에서 운영하는 멤버십 사이트 입니다.</p> 
	    <br />
	 </div> 
	 <div class="topnav" id="myTopnav">
		  <a href="/footerceos/usermembership" class="active">Home</a>
		  <sec:authorize access="!isAuthenticated()">
		  <a href="/membership/signin">Signin</a>
		  </sec:authorize>
		  <sec:authorize access="isAuthenticated()">
		  <a href="/membership/signup">Sginup</a>
		  </sec:authorize>
		  <a href="/membership/allpage">AllPage</a>
		  <a href="/membership/card">Membership Card</a>
		  <a href="/membership/event">Event</a>
		  <a href="/membership/affiliateservices">Affiliate Services</a>
		  <a href="/membership/vvip">VVIP Service</a>
		  <a href="/membership/about">About</a>
		  <sec:authorize access="isAuthenticated()">
		  <a href="javascript:signout()">signout</a>
		  </sec:authorize>
		  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
		    <i class="fa fa-bars"></i>
		  </a>
	</div>

	<div style="padding:0 16px">
	  <h3>Maven Company Membership</h3>
	  <p>Maven Company Membership Service는 기본적으로 아래 등급별로 제공하고 있습니다.</p>
	  <div id="membershipone" class="container-fluid">
	  <h1 style="color:black;font-size:xx-large;">CEO가 알려주는<b onclick="membershipalert()">Maven company Membership Code Service</b> 안내</h1>
	  <h2 style="color:black;">Maven Corporate Membership Code Service List Table</h2>
	  <i class="fas fa-quote-left fa-3x fa-pull-left fa-border" id="quote"></i>
	  <p style="color:black;">
	  	<mark><b title="Maven Company Membership Site"><i class='fas fa-user-check' style='font-size:24px'></i>Maven Company</b></mark>기업에서는 사원증에 멤버십카드와 체크, 신용카드, 교통카드 
	  	기능을 내장하고 있습니다. 그리고 등급에 따라서 카드색상도 다릅니다. 그리고 우리 기업에서는
	  	직급에 따라 멤버십혜택이 틀립니다. 우리회사와 연계된 식당, 마트, 쇼핑 등에서 할인혜택을
	  	받을 수 있습니다. 카드 색상에 대해서는 우리 회사 본 페이지에서 소개 합니다.
	  	아래 테이블 표는 우리회사에서 관리하고 보여주는 멤버십혜택 기능 입니다. 	
	  </p>

		<table>
		  <tr>
		    <th style="width:50%;">Maven Membership</th>
		    <th>Basic</th>
		    <th>Pro</th>
		    <th>Bronze</th>
		    <th>Gold</th>
		    <th>Diamond</th>
		    <th>Platinum</th>
		    <th>SuperPremium(1st)</th>
		  </tr>
		  <tr>
		    <td>VVIP</td>
		    <td><i class="material-icons" id="check">check</i></td>
		    <td><i class="material-icons" id="check">check</i></td>
		    <td><i class="material-icons" id="check">check</i></td>
		    <td><i class="material-icons" id="check">check</i></td>
		    <td><i class="material-icons" id="check">check</i></td>
		    <td><i class="material-icons" id="check">check</i></td>
		    <td><i class="material-icons" id="check">check</i></td>
		  </tr>
		  <tr>
		    <td>VIP</td>
		    <td><i class="material-icons" id="check">check</i></td>
		    <td><i class="material-icons" id="check">check</i></td>
		    <td><i class="material-icons" id="check">check</i></td>
		    <td><i class="material-icons" id="check">check</i></td>
		    <td><i class="material-icons" id="check">check</i></td>
		    <td><i class="material-icons" id="check">check</i></td>
		    <td><i class="material-icons" id="close">close</i></td>
		  </tr>
		  <tr>
		    <td>GOLD</td>
		    <td><i class="material-icons" id="check">check</i></td>
		    <td><i class="material-icons" id="check">check</i></td>
		    <td><i class="material-icons" id="check">check</i></td>
		    <td><i class="material-icons" id="check">check</i></td>
		    <td><i class="material-icons" id="close">close</i></td>
		    <td><i class="material-icons" id="close">close</i></td>
		    <td><i class="material-icons" id="close">close</i></td>
		  </tr>
		  <tr>
		    <td>Silver</td>
		    <td><i class="material-icons" id="check">check</i></td>
		    <td><i class="material-icons" id="check">check</i></td>
		    <td><i class="material-icons" id="close">close</i></td>
		    <td><i class="material-icons" id="close">close</i></td>
		    <td><i class="material-icons" id="close">close</i></td>
		    <td><i class="material-icons" id="close">close</i></td>
		    <td><i class="material-icons" id="close">close</i></td>
		  </tr>
		  <tr>
		    <td>White</td>
		    <td><i class="material-icons" id="check">check</i></td>
		    <td><i class="material-icons" id="check">check</i></td>
		    <td><i class="material-icons" id="close">close</i></td>
		    <td><i class="material-icons" id="close">close</i></td>
		    <td><i class="material-icons" id="close">close</i></td>
		    <td><i class="material-icons" id="close">close</i></td>
		    <td><i class="material-icons" id="close">close</i></td>
		  </tr>
		  <tr>
		    <td>Normal</td>
		    <td><i class="material-icons" id="check">check</i></td>
		    <td><i class="material-icons" id="close">close</i></td>
		    <td><i class="material-icons" id="close">close</i></td>
		    <td><i class="material-icons" id="close">close</i></td>
		    <td><i class="material-icons" id="close">close</i></td>
		    <td><i class="material-icons" id="close">close</i></td>
		    <td><i class="material-icons" id="close">close</i></td>
		  </tr>
		  <tr>
		    <td>New</td>
		    <td><i class="material-icons" id="check">check</i></td>
		    <td><i class="material-icons" id="close">close</i></td>
		    <td><i class="material-icons" id="close">close</i></td>
		    <td><i class="material-icons" id="close">close</i></td>
		    <td><i class="material-icons" id="close">close</i></td>
		    <td><i class="material-icons" id="close">close</i></td>
		    <td><i class="material-icons" id="close">close</i></td>
		  </tr>
		</table>
	  
	</div>
	</div>
	
	<div class="footer">
		Maven Company Made By <a href="/footerceo">ceo</a>
	</div> 
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<script>
		function myFunction() {
			  var x = document.getElementById("myTopnav");
			  if (x.className === "topnav") {
			    x.className += " responsive";
			  } else {
			    x.className = "topnav";
			  }
		}
		
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
		
		function membershipalert(){
			alert();
		}
	</script>
</body>
</html>