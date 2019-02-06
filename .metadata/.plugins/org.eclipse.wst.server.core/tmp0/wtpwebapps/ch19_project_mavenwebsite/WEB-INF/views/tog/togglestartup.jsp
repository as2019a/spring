<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" 
 	  content="width=device-width, initial-scale=1">
<title>Toggle Start-up Company</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
<style>
	body {
	  font-family: "Lato", sans-serif;
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
	
	/* On smaller screens, where height is less than 450px, change the style of the sidenav (less padding and a smaller font size) */
	@media screen and (max-height: 450px) {
	  .sidebar {padding-top: 15px;}
	  .sidebar a {font-size: 18px;}
	}
	
	/* Slideshow container */
	.slideshow-container {
	  position: relative;
	  background: #f1f1f1f1;
	}
	
	/* Slides */
	.mySlides {
	  display: none;
	  padding: 60px;
	  text-align: center;
	}
	
	/* Next & previous buttons */
	.prev, .next {
	  cursor: pointer;
	  position: absolute;
	  top: 50%;
	  width: auto;
	  margin-top: -30px;
	  padding: 16px;
	  color: #888;
	  font-weight: bold;
	  font-size: 20px;
	  border-radius: 0 3px 3px 0;
	  user-select: none;
	}
	
	/* Position the "next button" to the right */
	.next {
	  position: absolute;
	  right: 0;
	  border-radius: 3px 0 0 3px;
	}
	
	/* On hover, add a black background color with a little bit see-through */
	.prev:hover, .next:hover {
	  background-color: rgba(0,0,0,0.8);
	  color: white;
	}
	
	/* The dot/bullet/indicator container */
	.dot-container {
	    text-align: center;
	    padding: 20px;
	    background: #ddd;
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
	
	/* Add a background color to the active dot/circle */
	.active, .dot:hover {
	  background-color: #717171;
	}
	
	/* Add an italic font style to all quotes */
	q {font-style: italic;}
	
	/* Add a blue color to the author */
	.author {color: cornflowerblue;}
	
	
	
	.footer {
	   position: fixed;
	   left: 0;
	   bottom: 0;
	   padding: 15px;
	   width: 100%;
	   background-color: #43A047;
	   color: white;
	   text-align: center;
	}
</style>
</head>
<body>
	<div id="mySidebar" class="sidebar">
	  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
	  <a href="/main">Maven Company Main Site</a>
	  <a href="/tog/togglestartup">Toggle Start-up</a>
	  <a href="/tog/togglestartuptimes">Toggle Start-up Times</a>
	  <a href="/tog/toggledatacenter">Toggle Data Center</a>
	  <a href="/tog/togglecsv">Toggle CSV</a>
	</div>
	
	<div id="main">
	  <button class="openbtn" onclick="openNav()">☰ Toggle Sidebar</button>  
	  <h2 class="text-center" style="font-size:xx-large;color:blue;"><b>Toggle Start-up Company</b></h2>
	  <p class="text-center"><mark>Maven Company</mark> Gruop <b>Toggle Start-Up Company</b> Site.</p>
	</div>
	
	<div class="row" >
		<div class="col-xs-12">
			<div class="col-xs-2">
				
			</div>
			<div class="col-xs-8">
				<h2 style="text-align:center;color:green;"><b>Toggle Start-up 소개</b></h2>
				<p class="text-primary" style="text-align:center;font-size:large;">
				1. 토글 스타트업 회사는 Maven Company에 부속된 스타트업 회사로서
				Maven Company에서 직접 채용관리를 합니다. 우리 스타트업회사는
				전산서버관리 및 경비보안관리 그리고 AI인공지능 모듈개발하는 기업입니다. </p>
				<p class="text-secondary" style="text-align:center;font-size:large;">
				2. 토글 스타트업에서는 채용할때 Maven Company에 있는 토글 스타트업 인사부서에서
				직접 직원채용을 하고 채용순서는 서류전형 <i class='fas fa-arrow-right' style='font-size:20px'></i>
				1차 면접 <i class='fas fa-arrow-right' style='font-size:20px'></i>
				2차 면접(합숙 면접(2박3일)) <i class='fas fa-arrow-right' style='font-size:20px'></i>
				건강검진 <i class='fas fa-arrow-right' style='font-size:20px'></i>
				합격/불합격 통보로 신입사원/경력사원을 채용합니다.</p>
				<p class="text-warning" style="text-align:center;font-size:large;">
				3. 토글 스타트업 대표이사는 Maven Company TV방송국장이자 메이크업아티스트 실장으로 있는
				권소정 여자분이 맡고 있습니다. 토글 스타트업 직원 수는 869명으로서 869명이 협업하면서 근무하고 있습니다.</p>
				<p class="text-danger" style="text-align:center;font-size:large;">
				4. <i class='fas fa-exclamation-triangle' style='font-size:24px;color:red'></i> 회사내규 및 예절
				<h3 class="text-secondary" style="text-align:center;font-size:x-large;">직장예절</h3>
				<ul>
					<li>
					1. 인사 예절
					조직 내에서 특히, 상급자(원장 등)를 만났을 때, 인사를 잘 하는 것은 여러 가지 평가에서도 중요한 요소
					로 반영되곤 한다. 하지만, 이런 인사도 잘 못하면 독이 되는데, 특히, 영혼이 없는 인사는 상대를 불쾌하기
					만들기 쉽니다. 상급자에게 인사를 할 때는 상대방의 눈을 보며 “안녕하세요?” 라고 말한 후, 머리를 살짝
					숙여 목례로 마무리 하면 된다. 후배 또는 동기에게는 “안녕하세요?”라고 말로만으로 해도 무방하다. 헤어
					질 때는 “그럼 가보겠습니다.”, “수고하세요.”라고 표현할 수 있는데 여기서 “수고하세요.”라는 표현은 절대
					상급자에게는 사용해서는 안 된다. “수고”라는 말은 상급자가 하급자에게만 사용되는 말이기 때문이다.
					</li>
					<li>
					2. 전화 예절
					전화와 관련된 예절을 받을 때와 걸 때로 나눠서 보면,
					받을 때는 “예, 감사합니다. 누구누구입니다.”가 기본이다. 특히 상대방이 누구인지 알고 전화를 받을 때,
					상급자인 경우는 “예, 감사합니다. 누구누구입니다.”로 후배 또는 동기인 경우는 “누구누구입니다.”로 해도
					무방하다. 하지만, 늘 “예, 감사합니다. 누구누구입니다.”로 하는 것이 제일 좋은 방법이다. 전화를 받을 때
					“예~.”만하고 전화를 받는 경우가 있는데, 이는 잘 못된 것이다.전화를 걸 때는 기본적으로 “예, 안녕하세요? 실례지만…….”으로 시작하면 된다.
					그리고 마지막으로 통화가 완료되었을 때, “예, 감사합니다.”로 마무리 하면 된다.
					</li>
					<li>
					3. 회의 예절
					회의는 여러 사람들이 모여 이루어지는 경우가 대부분이다. 각자의 역할이 있기 마련인데, 회의 때는 각자
					의 역할에 맞은 문서와 자료를 미리 잘 작성해서 준비하는 것이 중요하다. 그리고 항상 경청하고, 메모하는
					습관과 회의에 적극적으로 참여하여야 한다. 회의 참석자는 시작하기 5분전에는 회의 장소에 모여야 하며,
					준비된 문서등도 5분전까지는 배포되어야 한다. 대부분 회의 장소에 모일 때, 제일 상급자가 마지막에 참석
					하는 경우가 많은데, 이럴 때 미리 참석한 사람들은 상급자에게 인사를 하도록 한다. “반갑습니다.” 또는
					“안녕하세요.” 이 정도의 인사면 충분하며, 대표(원장)등이 참석할 때, 때로는 전원 기립하기도 한다.
					</li>
					<li>
					4. 보고 예절
					조직(학원. 기관, 회사 등)생활을 하면서 무수히 많은 보고를 하게 된다. 보고 문서를 작성하고 이를 설명
					해야 할 때가 많은데, 보고는 보고 받는 사람의 입장에서 작성하고 보고해야 한다. 그런데, 많은 부분, 보고
					하는 사람의 입장에서 이루어지는 경우가 많은데 이는 큰 잘못이다. 그리고 보고는, 보고 받는 사람의 상황
					을 파악하고 보고해야 한다. 특히, 보고할 때는 두괄식으로 하는 것이 일반적으로 좋은 방법이며, 보고 받는
					사람이 이해할 수 있도록 보고해야 한다. 보고는 타이밍과 스킬의 결정체라고 할 수 있다.
					</li>
					<li>
					5. 호칭 예절
					특히, 호칭과 관련해서 남성의 경우, 군대를 갔다 왔기 때문에 어느 정도 이해하고 있지만, 여성의 경우
					잘 모르는 경우가 많다.
					예를 들어보면,
					나는 30세 새내기 강사, 나의 직속 상사는 10년 경력의 박 선생, 그리고 원장은 이원장일 경우, 나와 이원
					장 사이의 대화 상황을 가정해서 살펴보겠습니다.
					“원장님, 오늘 박 선생님께서 아프셔서 출근하시지 못하셨습니다.”라고 한다면 이런 말은 호칭부터 어법까지
					모두 잘못된 것이다.
					이를 제대로 한다면,
					“원장님, 오늘 박선생가 아파서 출근하지 못했습니다.”라고 해야 한다.
					“박 선생님께서” “아프셔서”, “출근하시지”, “못하셨습니다.”라는 표현은 내 입장에서 박 선생이 상급자이기
					때문에 가능하지만, 이원장 입장에서 박 선생이 부하직원이기 때문에 이런 표현은 이원장보다 박 선생이 더
					상급자로 표현되는 것이기 때문에 이런 표현은 절대 사용하지 말아야 한다. “님”자도 제대로 사용하지 못하
					는 사람은, 기본을 전혀 알지 못하는 사람으로 치부될 수 있다는 것을 명심해야 한다.
					</li>
				</ul>
				<p class="text-success" style="text-align:center;font-size:x-large;">
				Duis mollis, est non commodo luctus, nisi erat porttitor ligula.</p>
				<p class="text-info" style="text-align:center;font-size:x-large;">
				Maecenas sed diam eget risus varius blandit sit amet non magna.</p>
			</div>
			<div class="col-xs-2">
				
			</div>
		</div>
	</div>
	
	<div class="footer">
	  <p><b>Toggle Start-up Company</b> Footer</p>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		function openNav() {
		  document.getElementById("mySidebar").style.width = "250px";
		  document.getElementById("main").style.marginLeft = "250px";
		}

		function closeNav() {
		  document.getElementById("mySidebar").style.width = "0";
		  document.getElementById("main").style.marginLeft= "0";
		}
		
		
	</script>
</body>
</html>