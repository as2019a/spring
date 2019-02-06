<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" 
 	  content="width=device-width, initial-scale=1">
<title>Maven Company Signup Messages Page</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-colors-win8.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
	.jumbotron{
		margin-bottom: 5px;
		background-color:red;
		text-align:center;
	}
	
	#myProgress {
	  width: 100%;
	  background-color: #ddd;
	}
	
	#myBar {
	  width: 1%;
	  height: 30px;
	  background-color: red;
	}
	
	.collapsible {
	  background-color: #aaa69d;
	  color: white;
	  cursor: pointer;
	  padding: 18px;
	  width: 100%;
	  border: none;
	  text-align: left;
	  outline: none;
	  font-size: 15px;
	}
	
	.active, .collapsible:hover {
	  background-color: #555;
	}
	
	.collapsible:after {
	  content: '\002B';
	  color: white;
	  font-weight: bold;
	  float: right;
	  margin-left: 5px;
	}
	
	.active:after {
	  content: "\2212";
	}
	
	.content {
	  padding: 0 18px;
	  max-height: 0;
	  overflow: hidden;
	  transition: max-height 0.2s ease-out;
	  background-color: #f5f6fa;
	}
	
	.danger {
	  background-color: #ffdddd;
	  border-left: 6px solid #f44336;
	}
	
	.w3-container{
		margin:0;
	}
	
	#redone{
		text-align:center;
	}
	
	#redone::first-line {
	  color: #ff0000;
	  font-variant: small-caps;
	}
	
	.footer{
		height: 100px;
		line-height: 100px;
		background-color: #444;
		color: red;
		text-align: center;
		margin-top: 200px;
	}
</style>
</head>
<body>
	<div class="jumbotron">
		<h1 style="font-size:xx-large;color:white;" title="Maven Company 회원가입시 주의사항"><i class='fas fa-exclamation' style='font-size:36px;color:yellow;'></i> Maven Company Signup Messages Page</h1>
	</div>
	<div class="container">
		<div class="col-md-12">
			<div class="col-md-3">
				<div class="w3-container">
					<button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-black"><i class="fa fa-bug" style="font-size:20px"></i> Open Modal Message</button>

					  <div id="id01" class="w3-modal">
					    <div class="w3-modal-content">
					      <header class="w3-container w3-teal"> 
					        <span onclick="document.getElementById('id01').style.display='none'" 
					        class="w3-button w3-display-topright">&times;</span>
					        <h2 style="text-align:center;"><i class="fa fa-yelp" style="font-size:24px;color:buttonhighlight;"></i> Model Message !</h2>
					      </header>
					      <div class="w3-container">
					        <div class="w3-panel w3-win8-crimson">
							    <h2 style="text-align:center;"><i class='fas fa-info-circle' style='font-size:24px;color:orange;'></i> 사내 정보보안 안내</h2>
							    <h4 style="text-align:center;">사용자 계정 관리 안내</h4>
							    <ol>
							    	<li>신규 사용자계정 생성 시 별지 제 호에 따라 신청서 작성 신원확인
										등의 절차를 거쳐 발급</li>
 									<li>직무변경 퇴직 등 인사이동이 있을 경우 관련 정보시스템 접근권한을 조정</li>
 									<li>사용자별 그룹별 접근권한 부여 및 사용자계정 공용 금지</li>
 									<li>외부 사용자의 계정부여는 불허하되 부득이한 경우 유효기간을 설정 ,
 									하는 등의 보안조치 후 허용</li>
 									<li>비밀번호 등 사용자 식별 인증 수단이 없는 사용자계정 사용 금지</li>
 									<li>사용자계정을 주기적 관리자 계정 개월 사용자계정 개월 으로 점검 ( 3 , 6 )
 									하여 접근권한 재검토</li>
 									<ol>
 										<li>정보시스템의 계정은 사용목적 및 권한에 따라 관리자계정과 사용자
 										계정으로 구분하여 관리하여야 한다.</li>
	 									<li>관리자계정은 관리자로 지정된 자만이 사용</li>
	 									<li>분임정보보안관리자는 별지 제 호에 따라 소관 정보시스템별 계정발급 6
										현황을 관리하여야 한다.</li>
 									</ol>	
							    </ol>
							    <!-- Trigger the modal with a button -->
								  <button type="button" class="btn btn-warning btn-lg" data-toggle="modal" data-target="#myModal">비밀번호 관리 안내</button>
								
								  <!-- Modal -->
								  <div class="modal fade" id="myModal" role="dialog">
								    <div class="modal-dialog modal-lg">
								      <div class="modal-content">
								        <div class="modal-header">
								          <button type="button" class="close" data-dismiss="modal">&times;</button>
								          <h4 class="modal-title" style="font-size:x-large;color:silver;text-align:center;">비밀번호 관리</h4>
								        </div>
								        <div class="modal-body">
								          <p style="font-size:large;color:blue;">영문자 특수문자 등을 혼합하여 자리 이상으로 정하여야 한다 다만 , 9 . ,
											정보시스템에서 기능을 지원하지 않는 경우는 예외로 한다.</p>
											<ol style="font-size:medium;color:red;">
												<li>사용자계정 과 동일하지 않을 것</li>
												<li>개인신상 및 부서명칭 등과 관계가 없을 것</li>
												<li>일반 사전에 등록된 단어 또는 추측하기 쉬운 단어는 사용을 피할 것</li>
												<li>동일단어 또는 숫자를 반복하여 사용하지 말 것</li>
												<li>사용된 비밀번호는 재사용하지 말 것</li>
												<li>비밀번호를 여러 사람이 공유하여 사용하지 말 것</li>
												<li>응용프로그램 등을 이용한 자동 비밀번호 입력기능 사용 금지</li>
												<li>비밀번호에 유효기간을 선정하여 주기적으로 변경할 것</li>
												<ol>
													<li>서버에 등록된 비밀번호는 암호화하여 저장하여야 한다.</li>
													<li>비밀이나 중요자료는 자료별 비밀번호를 부여하여야 한다</li>
												</ol>
											</ol>
								        </div>
								        <div class="modal-footer">
								          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
								        </div>
								      </div>
								    </div>
								  </div>
							  </div>
					      	</div>
					      <footer class="w3-container w3-teal">
					        <p style="text-align:center;"><i class="fa fa-envira" style="font-size:12px;color:window;"></i>Modal Message Footer</p>
					      </footer>
					    </div>
					  </div>
				</div>
				<br />
				<br />
				<div class="alert alert-success" role="alert">
					<h2 style="text-align:center;font-size:small;">정보보안 기본원칙</h2>
					<ol style="font-size:x-small;">
						<li>원내 사업 추진 시 발생된 정보자산은 본 기업자체 소유이며 
							관리는 각 팀 단위로 한다.</li>
						<li>본 기업자체 정보자산은 업무상 필요한 최소한의 접근권한이 부여되어야 한다.</li>
						<li>인가된 사용자는 전자정보를 사용함과 동시에 보호할 책임을 가지며,
							비인가자는 자신의 업무와 무관한 어떠한 정보자산에도 접근을 시도
							해서는 아니 된다.</li>
						<li>본 기업 직원은 정보보안기본지침을 준수 할 의무가 있으며 이를
							위반할 시에는 주의 경고 등을 포함한 인사규정에 따라 징계의 사유가 ,
							될 수 있다.</li>
					</ol>
				</div>
				<div class="alert alert-info" role="alert">
					<h3 style="text-align:center;font-size:x-large;color:yellow;">서버관리구역</h3>
					<p id="redone">Server Alerts Red For Line is No !!</p>
					<a class="w3-btn w3-red w3-disabled" >출입제한 Button</a>
					<br />
					<a class="w3-button w3-lime">출입제한 Server 안내</a>
					<h5 style="text-align:center;font-size:large;color:green;">Server 보안시설</h5>	
				</div>
				<div class="alert alert-danger" role="alert">
					<h4  style="text-align:center;font-size:x-large;color:fuchsia;" onclick="alertmsg();">Server Alert</h4>
					<a class="w3-btn w3-lime w3-xlarge" href="/secur/srysite" onclick="sryalert();">Security Button</a>
				</div>
			</div>
			<div class="col-md-6">
				<div id="myProgress">
				  <div id="myBar"></div>
				</div>
				
				<br>
				<button onclick="move()">Alert Message</button> 
				
				<h2 style="color:red;text-align:center;">경고 : 본 기업 사이트는 보안사이트로 가입하기전에 꼭 읽어보고 가입하셔야 합니다.</h2>

				<p style="font-size:24px;"><i class='fas fa-exclamation-triangle' style='font-size:24px;'></i> Maven Company member signup message:</p>
				<button class="collapsible" style="color:red;font-size:x-large;">Security Message</button>
				<div class="content">
				  <p style="color:red;text-align:center;">본 기업사이트는 보안서버로 운영됩니다. 가입시에 절차가 복잡합니다. 본 기업 보안관련내용을 보시고 가입해주시기를
				  바랍니다.</p>
				</div>
				
				<p style="font-size:22px;"><i class='fas fa-exclamation-circle' style='font-size:22px'></i> Message Set:</p>
				<button class="collapsible" style="color:orange;font-size:large;">Open Message 1</button>
				<div class="content">
				  <p style="color:navy;">1. 본 기업에서는 시큐리티 보안자체가 구축되어있습니다. 회원가입이 쉽지않을수 있습니다.
				  회원가입시에 중복검사 E-mail 인증절차를 거쳐서 CEO님의 승인결재가 떨어져야 가입이 가능하고
				  특히 외부인들에게는 승인절차가 복잡하며 입사자들이 가입할 경우에는 면접때 승인합니다.</p>
				</div>
				<button class="collapsible" style="color:orange;font-size:large;">Open Message 2</button>
				<div class="content">
				  <p style="color:green;">2. 본 기업에서는 친환경을 목적으로 공기청정기를 가동하고 있습니다. 그리고 건강을 목적으로
				  담배 흡연하는것을 금지하고 있습니다. 가입하기전에 2번 안내사항을 꼭 읽어보시기를 바랍니다.</p>
				</div>
				<button class="collapsible" style="color:orange;font-size:large;">Open Message 3</button>
				<div class="content">
				  <p style="color:fuchsia;">3. 본 기업에서는 공동체문화를 중심으로 운영하고 있습니다. 웹개발시에
				  협업을 위주로 하고 있습니다. 그리고 근무시간으로는 평일에 AM 9:30~PM 6:30으로 근무하고 있고 주4일제로
				  운영중입니다. 자세한 것은 메인페이지 etc를 참고해주시기를 바랍니다.</p>
				</div>
			</div>
			<div class="col-md-3">
				<div class="danger">
				  <p><strong>경고!</strong> 웹개발시에는 보안프로그램을 사용하고 있습니다.</p>
				</div>
				<div class="danger">
				  <p><strong>경고!</strong> 사내인트라넷도 운영하는 회사로서 물품반입시에 검색대에서 검사합니다.</p>
				</div>
				<div class="danger">
				  <p><strong style="font-size:x-large;">경고!</strong> <b style="font-size:larger;">본 기업체는 Maven프로그램과 Spring, SpringBoot 프로그램을 사용하고 git과
				  github도 사용중입니다. 그리고 n키퍼 보안프로그램도 동작합니다. 비인가USB 저장매체나 CDP등은 사전에 허가가 있어야
				  반입이 가능합니다.</b></p>
				</div>
				<div class="danger">
				  <p><strong style="font-size:xx-large;">경고!</strong><i class="fa fa-cogs" style="font-size:35px;color:red"></i> <p style="font-size:15px;color:teal;">본 기업사이트
				  보안관리는 ADMIN권한으로 관리되고 있습니다. ADMIN권한보유자가 Main Page Menu Admin Page에서 관리자권한으로 보안등급 등을
				  조절하고 관리합니다. 그리고 실시간으로 보안점검이 이루어지는 곳으로서 가입하기전에 보안관련내용을 여기에서
				  숙지하시고 진행해주시기를 바랍니다.</p></p>
				</div>
				<div class="danger">
				  <p><strong style="font-size:x-large;">경고!</strong><i class="fa fa-expeditedssl" style="font-size:25px;color:maroon;"></i> <p  style="font-size:15px;color:purple;"> 
				  본 기업사이트에서 보안SYSTEM Server 관리는 Manager권한 있는 간부급직원들이 관리합니다. 
				  보안SYSTEM Server는 Tomcat 9.0을 사용하고 데이터베이스를 연계 관리합니다.</p></p>
				</div>
			</div>
		</div>
	</div>
	<div class="footer">
		<i class='fas fa-exclamation-circle' style='font-size:12px'></i> Red Messages!!
	</div>
	</body>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<script>
		function move() {
			  alert("Red : Maven Company Signup Message Call~!!")
			  var elem = document.getElementById("myBar");   
			  var width = 1;
			  var id = setInterval(frame, 10);
			  function frame() {
			    if (width >= 100) {
			      clearInterval(id);
			    } else {
			      width++; 
			      elem.style.width = width + '%'; 
			    }
			  }  
		}
		
		var coll = document.getElementsByClassName("collapsible");
		var i;

		for (i = 0; i < coll.length; i++) {
		  coll[i].addEventListener("click", function() {
		    this.classList.toggle("active");
		    var content = this.nextElementSibling;
		    if (content.style.maxHeight){
		      content.style.maxHeight = null;
		    } else {
		      content.style.maxHeight = content.scrollHeight + "px";
		    } 
		  });
		}
		
		function realtimeClock() {
			  document.rtcForm.rtcInput.value = getTimeStamp();
			  setTimeout("realtimeClock()", 1000);
			}
		
		function alertmsg(){
			alert("본 기업 서버관련 내용입니다. 아래 버튼 링크클릭하면 해당 전산서버관리 사이트에 들어가서 보안관련서버 확인 가능합니다.")
		}
		
		function sryalert(){
			alert("본 기업 전산관리페이지로 연결됩니다.")
		}
	</script>
</html>