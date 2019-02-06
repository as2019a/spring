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
<title>Maven Company Footer CEO Page</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<style>
	.jumbotron{
		margin-bottom: 5px;
		text-align: center;
	}
	
	#section1 {padding-top:70px;height:700px;color: #fff; background-color: #1E88E5;}
	#section2 {padding-top:70px;height:700px;color: #fff; background-color: #673ab7;}
	#section3 {padding-top:90px;height:900px;color: #fff; background-color: #ff9800;}
	#section41 {padding-top:70px;height:700px;color: #fff; background-color: #00bcd4;}
	#section42 {padding-top:90px;height:900px;color: #fff; background-color: #B2EBF2;}
	
	#section1:hover{
		background-color:#1E88E5;
		color:navy;
	}
	#section2:hover{
		background-color:#1673ab7;
		color:olive;
	}
	
	#myDIV {
	  width: 100%;
	  padding: 50px 0;
	  text-align: center;
	  background-color: lightblue;
	  margin-top: 20px;
	}
	
	#myBtn:hover {
	  background-color: #b8e994;
	}
	
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
	    <h1>Maven Company Footer CEO Page</h1> 
	    <p>MAVEN COMPANY CEO 이수진(여자) 대표이사님의 페이지 입니다.</p> 
	    <br />
	  	<p>본 기업 관리자이자 대표이사로 회사를 위해 노력하고 있습니다.</p> 
	  	<p>대표이사님은 올해 49세로 1971년에 출생하였으며 Maven Company의 제3대 자리에서 경영을 하고 있습니다.</p>
	  	<br />
	  	<p id="kaone" onclick="kaonealert()">본 페이지는 전체공개 페이지 입니다.</p>
	 </div> 
	<nav class="navbar navbar-inverse">
	  <div class="container-fluid" data-spy="scroll" data-target=".navbar" data-offset="50">
	    <div class="navbar-header">
	        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
	          <span class="icon-bar"></span>
	          <span class="icon-bar"></span>
	          <span class="icon-bar"></span>                        
	      </button>
	      <a class="navbar-brand" href="#">Maven Company Footer CEO Page</a>
	    </div>
	    <div>
	      <div class="collapse navbar-collapse" id="myNavbar">
	        <ul class="nav navbar-nav">
	          <li><a href="#section1">CEO Mission</a></li>
	          <li><a href="#section2">CEO Creating Shared Value</a></li>
	          <li><a href="#section3">CEO Business Philosophy</a></li>
	          <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">CEO Global<span class="caret"></span></a>
	            <ul class="dropdown-menu">
	              <li><a href="#section41">CEO English Time</a></li>
	              <li><a href="#section42">CEO Check Table</a></li>
	            </ul>
	          </li>
	          <li><a href="/side/ceo">CEO Page</a></li>
	          <li><a href="/main">Maven Company Main Page</a></li>
	          <sec:authorize access="hasRole('ROLE_ADMIN')">
	          	<li><a href="/footerceos/ceoadmin">CEO Admin</a></li>
	          </sec:authorize> 
	        </ul>
	      </div>
	    </div>
	  </div>
	</nav>    
	
	<div id="section1" class="container-fluid">
	  <h1 class="text-center" style="font-stretch:ultra-condensed;font-family:sans-serif; 
	  			font-size:xx-large;color:aqua;">CEO Strategy Mission</h1>
	  <br />
	  <h2 class="text-center" style="font-size:xx-large;" title="Mission One">
	  	사랑과 신뢰를 받는 웹사이트를 개발 제공하여 
		다양하게 기업 웹사이트를 공급 기여한다
	  </h2>
	  <br />
	  <p class="text-center" style="font-size:x-large;">
	  	Contributes to the development and supply of 
		various corporate websites by providing a website that is loved and trusted
	  </p>
	  <br />
	  <hr />
	  <br />
	  <h2 class="text-center" style="font-size:xx-large;" title="Mission Two">
	  	여러가지 산업분야에서 적극 활용하는 웹사이트를 개발 제공하여
	  	편리성을 기여한다.
	  </h2>
	  <br />
	  <p class="text-center" style="font-size:x-large;">
	  	It contributes convenience by developing and providing web sites that are 
	  	utilized in various industries.
	  </p>
	</div>
	<div id="section2" class="container-fluid">
	  <h1 class="text-center" style="font-stretch:ultra-condensed;font-family:sans-serif; 
	  			font-size:x-large;color:fuchsia;">CEO Creating Shared Value</h1>
	  <br/>
	  <h2 class="text-center" style="font-size:xx-large;">
	  	1. 우리 사회가 더욱 풍요로운 세상이 될 수 있도록
		소외계층의 권리와 인식개선을 위해 다양한 형태의 나눔활동을 전개하고 있습니다.
	  </h2>
	  <br />
	  <h2 class="text-center" style="font-size:xx-large;">
	  	2. 해외선교활동과 해외봉사활동 후원들을 통해 어려운 이웃들을 도와주고 있습니다.
	  </h2>
	  <br />
	  <h2 class="text-center" style="font-size:xx-large;">
	  	3. 쪽방촌에 사는 어려운 이웃들과 노숙자, 독거노인들의 삶을 도와주고 의식주를
	  	나눔활동 및 지원활동을 하고 있습니다.
	  </h2>
	  <br />
	  <hr />
	  <br />
	  <p class="text-center" style="font-size:large;">
	  	1. We are carrying out various forms of sharing activities to improve the rights and 
	  	   awareness of the underprivileged so that our society can become a more affluent world.
	  </p>
	  <br />
	  <p class="text-center" style="font-size:large;">
	  	2. We are helping our neighbors through our overseas missions and 
	  	   overseas volunteer activities.
	  </p>
	  <br />
	  <p class="text-center" style="font-size:large;">
	  	3. We help the lives of the elderly, the homeless and the elderly living in difficult neighborhoods in the village, 
	  	   sharing food and shelter, and supporting activities.
	  </p>
	</div>
	<div id="section3" class="container-fluid text-center" style="font-stretch:ultra-condensed;font-family:sans-serif; 
	  			font-size:large;color:maroon;">
	  <h1>CEO가 알려주는 인생이야기</h1>
	  <button class="w3-button w3-light-green btn-lg" type="button" data-toggle="modal" data-target="#myModal">경영철학</button>
	  	<!-- Modal -->
		<div id="myModal" class="modal fade" role="dialog">
		  <div class="modal-dialog">
		
		    <!-- Modal content-->
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal">&times;</button>
		        <h4 class="modal-title" style="color:green;">경영철학</h4>
		      </div>
		      <div class="modal-body text-center">
		       	<h3 style="color:black;">원칙경영</h3>
		       	<p class="w3-text-blue">
		       		기본과 원칙을 중시하는 정도 지향 경영
		       	</p>
		       	<br />
		       	<h3 style="color:black;">고객중심경영</h3>
		       	<p class="w3-text-blue">
		       		고객 만족 극대화를 통한 웹사이트 개발 아이디어 창출
		       	</p>
		       	<br />
		       	<h3 style="color:black;">시스템경영</h3>
		       	<p class="w3-text-blue">
		       		전문성과 자율성을 바탕으로 조직 공동체 운영
		       	</p>
		       	<br />
		       	<h3 style="color:black;">변화중심경영</h3>
		       	<p class="w3-text-blue">
		       		긍정적인 혁신과 변화를 통한 기업 문화 창조
		       	</p>
		       	<br />
		       	<h3 style="color:black;">인재중심경영</h3>
		       	<p class="w3-text-blue">
		       		미래지향적인 인재 발굴 및 긍정적인 인재 발굴
		       	</p>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		      </div>
		    </div>
		
		  </div>
		</div>
	
	  <button class="w3-button w3-blue-grey btn-lg" onclick="myFunction()">명언</button>

		<div id="myDIV">
			<h3>Times1</h3>
			<p>미래는 현재 우리가 무엇을 하는가에 달려 있다.</p>
			<p>The future depends on what we do in the present.</p>
			<h3>Times2</h3>
			<p>시간은 우리를 변화시키지 않는다. 시간은 단지 우리를 펼쳐 보일 뿐이다.</p>
			<p>Time does not change us. It just unfolds us.</p>
		</div>
	  	
	  <p>이수진 대표이사님은</p>
		<pre>
			1971년1월에 출생하였으며 3녀 중 첫째 <b>장녀</b>로 태어나서 어린시절부터 
			경영학문에 들어가서 공부를 하였고 유치원때 부터 중학교때 까지는 부모님과 동생들과
			같이 살고 고1때 부터 동생들과 함께 독립하여 자취생활하면서 살았습니다. 이후 대학교는
			수석장학생으로 경영학과에 들어가서 공부했으며 경영학과에서 동문들과 함께 자취생활하면서
			경영학문을 틈틈히 쌓고 공부해서 장학금수여받는 등 최우수학생으로 대학생활도 했습니다.
			그리고 경영학문을 통해 회사경영원리 등을 공부하였습니다. 현재 CS강사로 있으며
			본 회사에 입사를 25살에 하여 R and D 연구부서에서 업무를 보고 회사공동체확립을
			하기위해 많은 공과 노력 쌓은 뒤 간부급 이사를 거쳐서 제3대 대표이사자리까지 실력으로
			올라와서 본 Maven Company 회사 현업 대표이사님으로 종사하고 있고 기독교를 믿고 있습니다.
			그리고 5살 연상 남편과 딸2명과 아들2명을 두고 있습니다.
		</pre>
	</div>
	<div id="section41" class="container-fluid">
		<h1 style="text-align:center;">CEO English Time</h1>
	  <div class="accordion" id="accordionExample">
		  <div class="card">
		    <div class="card-header" id="headingOne">
		      <h2 class="mb-0">
		        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
		          비지니스 회의 영어 1. 회의를 시작할 때 사용하는 표현
		        </button>
		      </h2>
		    </div>
		
		    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
		      <div class="card-body">
		        <h3>To get the ball rolling</h3>
		        <p>정의: 회의나 논의를 시작하다</p>
		        <p>예문: “OK, everyone. Let’s get the ball rolling. Come and sit down and we’ll start the meeting.”
					(자, 여러분. 본격적으로 시작하겠습니다. 와서 앉아 주세요. 회의 시작합니다.)</p>
		        <h3>To open with</h3>
		        <p>정의: 특정 주제로 시작하다</p>
		        <p>예문: “Let’s open with a summary of what each of you has achieved this week.”
					(여러분의 이번 주 성과에 대한 간략한 설명으로 시작하겠습니다.)</p>
		      </div>
		    </div>
		  </div>
		  <div class="card">
		    <div class="card-header" id="headingTwo">
		      <h2 class="mb-0">
		        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
		          비지니스 회의 영어 2. 회의 주제 또는 회의 안건을 전환할 때
		        </button>
		      </h2>
		    </div>
		    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
		      <div class="card-body">
		        <h3>To hand over to</h3>
		        <p>정의: 다른 화자를 소개하다</p>
		        <p>예문: “I’d like to hand over to Dave to explain our plans for the next quarter.”
					(다음 사분기에 대한 저희 계획을 데이브가 설명해 드릴 겁니다.)</p>
		        <h3>On the agenda</h3>
		        <p>정의: 다룰 안건</p>
		        <p>예문: “Next item on the agenda is to decide on a new supplier.”
					(다음 안건은 새로운 공급업자를 선정하는 겁니다.)</p>
		        <h3>To get down to business</h3>
		        <p>정의: 가장 중요한 사안을 다루다</p>
		        <p>예문: “It’s time to get down to business. How much will this cost and how much time will it save me?” 
		        	(이제 당면 문제를 다루죠. 비용과 감축 시간은 어떻게 됩니까?)</p>
		      </div>
		    </div>
		  </div>
		  <div class="card">
		    <div class="card-header" id="headingThree">
		      <h2 class="mb-0">
		        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
		          비지니스 회의 영어 3. 기타 자주 사용하는 영어 회의 표현
		        </button>
		      </h2>
		    </div>
		    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
		      <div class="card-body">
		        <h3>To kick off</h3>
		        <p>정의: 시작하다</p>
		        <p>예문: “Let’s kick off by reviewing the results of our last campaign.”
					(지난번 캠페인 결과를 검토하는 걸로 시작하죠.)</p>
		        <h3>To take the minutes</h3>
		        <p>정의: 회의 내용과 결정 사항을 모두 기록하다</p>
		        <p>예문: “It’s my turn to take the minutes, so please let me know if there’s 
		        		anything special you want me to make a note of.” 
		        	(제가 회의록을 작성할 차례예요. 기록할 특이 사항이 있으면 알려주세요.)</p>
		      </div>
		    </div>
		  </div>
		</div>
	</div>
	<div id="section42" class="container-fluid">
	  <h1 style="color:black;font-size:xx-large;">CEO가 알려주는<b onclick="membershipalert()">Maven company Membership Code Service</b> 안내</h1>
	  <h2 style="color:black;">Maven Corporate Membership Code Service List Table</h2>
	  <i class="fas fa-quote-left fa-3x fa-pull-left fa-border" id="quote"></i>
	  <p style="color:black;">
	  	<mark><b><a href="/footerceos/usermembership" title="Maven Company Membership Site"><i class='fas fa-user-check' style='font-size:24px'></i>Maven Company</a></b></mark>기업에서는 사원증에 멤버십카드와 체크, 신용카드, 교통카드 
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
	<!-- Maven Company 이수진 대표이사님께서 알려주시는 CEO의 뜻 -->
	<div class="container">
	  <h1>CEO</h1>
	  <p>Chief Executive Officer</p>
	  <blockquote class="blockquote-reverse">
	    <p>CEO는 대기업에서 이사회의 주재, 기업그룹 방침의 결정, 장기계획 작성 등과 관련하여 총괄적인 책임을 가지는 최고경영자로, 
	    	통상적으로는 기업의 회장이 CEO를 겸임하고 있다.</p>
	    <footer>Maven Company 이수진 대표이사님께서 알려주시는 CEO의 뜻</footer>
	  </blockquote>
	</div>
	<div class="container">
		<button onclick="topFunction()" class="btn btn-info" id="myBtn" title="Go to top">Top</button>
	</div>
	<div class="footer">
		Maven Company Made By CEO
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<script>
		function myFunction() {
		  var x = document.getElementById("myDIV");
		  if (x.style.display === "none") {
		    x.style.display = "block";
		  } else {
		    x.style.display = "none";
		  }
		}
		
		// When the user clicks on the button, scroll to the top of the document
		function topFunction() {
		  document.body.scrollTop = 0;
		  document.documentElement.scrollTop = 0;
		}
		
		function kaonealert() {
			alert("현재 보고 있는 페이지는 전체공개 페이지 입니다." +
				  "대표이사님께서 바라는 회사의 비젼 입니다.");
		}
		
		function membershipalert(){
			alert("Maven Company Mambership Site에서 맴버십사용방법과 혜택 등을 볼 수 있습니다.");
		}
	</script>
</body>
</html>