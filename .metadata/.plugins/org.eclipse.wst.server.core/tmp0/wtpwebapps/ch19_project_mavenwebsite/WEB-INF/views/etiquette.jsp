<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql" %>
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
	
	/* Button used to open the chat form - fixed at the bottom of the page */
	.open-button {
	  background-color: #555;
	  color: white;
	  padding: 16px 20px;
	  border: none;
	  cursor: pointer;
	  opacity: 0.8;
	  position: static;
	  bottom: 23px;
	  right: 28px;
	  width: 280px;
	}
	
	/* The popup chat - hidden by default */
	.chat-popup {
	  display: none;
	  position: fixed;
	  bottom: 0;
	  right: 15px;
	  border: 3px solid #f1f1f1;
	  z-index: 9;
	}
	
	/* Add styles to the form container */
	.form-container {
	  max-width: 300px;
	  padding: 10px;
	  background-color: white;
	}
	
	/* Full-width textarea */
	.form-container textarea {
	  width: 100%;
	  padding: 15px;
	  margin: 5px 0 22px 0;
	  border: none;
	  background: #f1f1f1;
	  resize: none;
	  min-height: 200px;
	}
	
	/* When the textarea gets focus, do something */
	.form-container textarea:focus {
	  background-color: #ddd;
	  outline: none;
	}
	
	/* Set a style for the submit/send button */
	.form-container .btn {
	  background-color: #4CAF50;
	  color: white;
	  padding: 16px 20px;
	  border: solid;
	  cursor: pointer;
	  width: 100%;
	  margin-bottom:10px;
	  opacity: 0.8;
	}
	
	/* Add a red background color to the cancel button */
	.form-container .cancel {
	  background-color: red;
	}
	
	/* Add some hover effects to buttons */
	.form-container .btn:hover, .open-button:hover {
	  opacity: 1;
	}
	
	#a:hover{
		color:blue;
	}
	
	#b:hover{
		color:red;
	}
	
	#c:hover{
		color:red;
	}
	
	#d:hover{
		color:fuchsia;
	}
	
	#e:hover{
		color:green;
	}
	
	#f:hover{
		color:maroon;
	}
	
	#g:hover{
		color:red;
	}
	
	#h:hover{
		color:navy;
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
		<h1 class="text-center"><i class='far fa-smile' style='font-size:50px'></i> Etiquette Page</h1>
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
					<li title="본 기업 사내 간부전용 페이지입니다.(기업사이트내부 간부전용 페이지입니다.)"><a href="/admin">admin</a></li>
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
			<div class="col-lg-12">
				<div class="col-lg-6">
					<h4 style="text-align:center;font-size:x-large;"><i class='fas fa-user' style='font-size:24px;color:background;'></i> <mark>사내 에티켓</mark></h4>
					<ol style="font-size:large;">
						<li id="a" title="본 기업 사내에서는 작장예절을 중시하고 있습니다. 선후배 동료 간 인사하는것이 첫 인상에 좋고 회사생활에 도움될수 있습니다.">
						<i class='fas fa-user-friends' style='font-size:15x;color:blue;'></i> 회사 사내에서는 직장 동료 선후배간에 예의 및 인사를 합니다.</li>
						<li id="b" title="본 기업 사내에서는 전 구역 금연구역입니다. 위반시에는 과태료, 벌금 등 낼 수 있고 회사 사내 손해볼수 있습니다. 금연 에티켓을 지켜주시기 바랍니다.">
						<i class="fa fa-fire" style="font-size:15px;color:red;"></i> 회사 사내에서는 흡연할수 없습니다. 지정되어있는 구역에서 흡연 가능합니다.</li>
						<li id="c" title="회사 사내에서는 선배가 후배에게 동료가 동료에게 갑질행위를 할 수 없습니다. 팀장급이상되는 직급이 주임,사원에게 갑질할시에는 회사에
						피해유발할수 있고 법적분쟁으로 이어질수 있습니다. 사내 에티켓으로 갑질행위를 자제해주시기 바랍니다.">
						<i class='fas fa-chess' style='font-size:15px;color:red;'></i> 회사 사내에서는 직장 선후배간에 갑질행위가 금지되어있습니다.</li>
						<li id="d" title="회사 사내에서 개발한 웹사이트는 군사용도 및 비공개기업체에서 사용되는 것으로도 사내 내부에서 코드공유하도록 되어있습니다. 사내 외부로 유출시에는
						사내보안법위반으로 장계 받을 수 있습니다. 주의하시기 바랍니다.">
						<i class='fas fa-shield-alt' style='font-size:15px;color:fuchsia;'></i> 회사 사내에서는 무단으로 대외비를 유출 할 수 없습니다. 유출 시에는 징역을 받을 수 있습니다.</li>
						<li id="e" title="본 기업에서 근무시에 전화통화할때는 군사용어 '통신보안' 이라는 용어를 쓰고 통화하는것이 예의 입니다. 보안유출방지를 위해 군사용어가 일부 사용되고 있습니다.">
						<i class='fas fa-phone' style='font-size:15px;color:green;'></i> 회사 사내에서는 양자 간 전화통화시에 보안유출방지를 위해 "통신보안"하고 전화를 받습니다.</li>
						<li id="f" title="본 기업에서 근무할시에는 군부대에 사용하는것과같은 사내인트라넷과 전용IP를 사용합니다. 개발코드유출이 금지되어있는관계로 IP변경하여 유출하시에는 에티켓
						위반으로 징계받을 수 있고 법적으로 책임받을수 있습니다. 입사이후부터는 사내보안과 에티켓을 따라주시기 바랍니다.">
						<i class='fas fa-lock' style='font-size:15px;color:maroon;'></i> 회사 사내에서는 인트라넷으로 사용합니다. 아웃트라넷으로 변경 및 외부 IP로 변경을 할 수 없습니다.</li>
						<li id="g" title="MP3, CDP 등 저장매체가 들어가있는 전자제품 반입시에는 반입하기전에 1층 보안관리지휘통제실을 거쳐서 허가 받아야 가능합니다.">
						<i class='fas fa-volume-mute' style='font-size:15px;color:purple;'></i> 회사 사내PC에서는 스피커를 통해 Mp3 등 음악파일프로그램을 키고 근무하는것은 예의 어긋나는 것으로
						스피커를 통해 하는것을 금지 합니다.</li>
						<li id="h" title="사내 에티켓 켐페인을 전 직원들이 하고 있는 곳 입니다. 에티켓 켐페인 운동에 많이 참여해주시기 바랍니다.">
						<button style='font-size:15px;color:#d35400;' onclick="location.href='eittes.jsp'"> 에티켓 켐페인 <i class='fas fa-bullhorn'></i></button> 회사 사내 에티켓을 생활화 합시다.</li>
					</ol>
					<button type="button" class="btn btn-success btn-lg" data-toggle="popover" title="에티켓 Message" data-content="사내 에티켓 생활화 합시다.">Message</button>
				</div>
				<div class="col-lg-6">
					<h2>에티켓 Chat</h2>
					<p>에티켓 Message</p>
					<p>사내 에티켓을 지키기위한 켐페인입니다.</p>
					
					<button class="open-button" onclick="openForm()" title="사내 에티켓 켐페인 board Message Chat">Chat</button>
					
					<div class="chat-popup" id="myForm">
					  <form action="/action_page.php" class="form-container">
					    <h1 style="text-align:center;" title="사내 예절 켐페인 운동">에티켓 Message</h1>
					
					    <label for="msg"><b>Message</b></label>
					    <textarea placeholder="Type message.." name="msg" required title="Message area"></textarea>
					
					    <button type="submit" class="btn" title="post">Send</button>
					    <button type="button" class="btn cancel" onclick="closeForm()" title="exit">Close</button>
					  </form>
					  
					  <a href="#" data-toggle="popover" title="Popover Header" data-content="사내 에티켓 켐페인 Message는 Send 버튼 누를시에 에티켓 페이지
					  게시판에 post를 거쳐서 올라갑니다.">Message 루트</a>
					</div>
					
					<h5 title="간부전용 페이지로 간부외에 직원들은 접근권한이 없습니다.(admin 권한있는 직급 간부이상되는 직원전용 페이지에 접근 가능 그 외 불가!!)" style="text-align:center;font-size:xx-large;color:orange;">간부 전용 페이지 링크</h5>
					<sec:authorize access="hasRole('ROLE_ADMIN')">
					<a href="executives/onadmin" type="button" class="btn btn-success btn-ms" title="본 기업 간부전용 페이지 입니다.(onadmin은 간부전용 웹페이지 입니다.)" style="text-align:center;">간부전용 페이지</a>
					</sec:authorize>
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
		
		$(document).ready(function(){
			 $('[data-toggle="popover"]').popover(); 
		});
		
		function openForm() {
			document.getElementById("myForm").style.display = "block";
		}

		function closeForm() {
			document.getElementById("myForm").style.display = "none";
		}
	</script>
</body>
</html>