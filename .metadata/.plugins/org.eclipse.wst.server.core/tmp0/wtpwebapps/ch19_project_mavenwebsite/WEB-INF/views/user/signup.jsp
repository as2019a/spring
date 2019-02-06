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
<title>Maven Company Signup Page</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
<style>
	.jumbotron{
		margin-bottom: 5px;
		background-color: #7CB342;
	}
	
	.jumbotron > h1:hover{
		color:#81D4FA;
		
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
		<h1 class="text-center" id="signup" onclick="signuplink()">Signup Page</h1>
		<h3 class="text-center"><i class='fas fa-key' style='font-size:24px;color:#FFF59D;'></i> <b>Maven Company</b> 회사 <mark>회원가입 페이지</mark> 입니다.</h3>
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
	</div>
	</div>
	<div class="container">
    	<div class="row">
    		<form action="/user/signup" method="post"
    			  class="form form-horizontal">
    			  <div class="form-group">
    			  	<label class="control-label col-xs-2">ID</label>
    			  	<div class="col-xs-8">
    			  		<input type="text"
    			  			   class="form-control"
    			  			   id="id"
    			  			   name="id"
    			  			   value="as2019a"
    			  			   autocomplete="on"
    			  			   placeholder="id"/>
    			  		<span class="error">${msg }</span>
    			  	</div>
    			  	<div class="col-xs-2">
    			  		<button class="btn btn-info btn-block" 
    			  				type="button" onclick="dupcheck();">중복확인</button>
    			  	</div>
    			  </div>
    			  <div class="form-group">
    			  	<label class="control-label col-xs-2">PASSWORD</label>
    			  	<div class="col-xs-4">
    			  		<input type="password"
    			  			   class="form-control"
    			  			   id="password"
    			  			   name="password"
    			  			   placeholder="password"/>
    			  		<span class="error">${msg }</span>
    			  	</div>
    			  	<label class="control-label col-xs-2">PASSWORD확인</label>
    			  	<div class="col-xs-4">
    			  		<input type="password"
    			  			   class="form-control"
    			  			   id="password"
    			  			   name="password"/>
    			  		<span class="error">${msg }</span>
    			  	</div>
    			  </div>
    			  <div class="form-group">
    			  	<label class="control-label col-xs-2">NAME</label>
    			  	<div class="col-xs-10">
    			  		<input type="text"
    			  			   class="form-control"
    			  			   id="name"
    			  			   name="name"
    			  			   autocomplete="on"
    			  			   placeholder="ex) 이수진"/>
    			  		<span class="error">${msg }</span>
    			  	</div>
    			  </div>
    			  <div class="form-group">
    			  	<label class="control-label col-xs-2">PHONE</label>
    			  	<div class="col-xs-10">
    			  		<input type="text"
    			  			   class="form-control"
    			  			   id="phone"
    			  			   name="phone"
    			  			   autocomplete="on"
    			  			   placeholder="ex) 010-1234-5678"/>
    			  		<span class="error">${msg }</span>
    			  	</div>
    			  </div>
    			  <div class="form-group">
    			  	<label class="control-label col-xs-2">ADDR</label>
    			  	<div class="col-xs-10">
	    			  	<input class="form-control" type="text" id="sample4_postcode" placeholder="우편번호">
						<input class="form-control btn btn-warning" type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
						<input class="form-control" type="text" id="sample4_roadAddress" placeholder="도로명주소">
						<input class="form-control" type="text" id="sample4_jibunAddress" placeholder="지번주소">
						<span class="form-control" id="guide" style="color:#999;display:none"></span>
						<input class="form-control" type="text" id="sample4_detailAddress" placeholder="상세주소">
						<input class="form-control" type="text" id="sample4_extraAddress" placeholder="참고항목">
					</div>
    			  </div>
    			  <div class="form-group">
    			  	<label class="control-label col-xs-2">EMALL</label>
    			  	<div class="col-xs-4">
    			  		<input type="email"
    			  			   class="form-control"
    			  			   id="emall"
    			  			   name="emall"
    			  			   autocomplete="on"
    			  			   placeholder="ex) manger@maven.com"/>
    			  		<span class="error">${msg }</span>
    			  	</div>
    			  	<div class="col-xs-2">
    			  		<button class="btn btn-info btn-block" 
    			  				type="button" onclick="emailCertify(this);">인증코드받기</button>
    			  	</div>
    			  	<div class="col-xs-4">
    			  		<input type="number"
    			  			   class="form-control"
    			  			   id="emallcerify"
    			  			   name="emallcerify"
    			  			   placeholder="인증코드입력란"/>
    			  		<span class="error">${msg }</span>
    			  	</div>
    			  	<div class="form-group">
   			  	  	<label class="control-label col-xs-2">GENDER</label>
	   			  	  	<div class="col-xs-10">
	   			  	  		<div class="radio">
	   			  	  		<label class="radio-inline col-xs-2">
	   			  	  			<input type="radio" name="${spring.status.expression}"
	   			  	  					value="m" />		
	   			  	  			Male
	   			  	  		</label>
	   			  	  		<label class="radio-inline col-xs-2">
	   			  	  			<input type="radio" name="${spring.status.expression}"
	   			  	  					value="f" />
	   			  	  			Female
	   			  	  		</label>
	   			  	  		</div>
	   			  	  		<span class="error">${msg}</span>
	   			  	  	</div>
   			  	 	 </div>
    			  </div>
    			  <div class="form-group">
   			  	  	<div class="col-sm-10 col-xs-offset-2">
   			  	  		<button type="submit" class="btn btn-primary btn-block">가입완료</button>
   			  	  	</div>
   			  	  </div>
    			</form>
    		</div>
    	</div>
    	<div class="footer">
    		<a href="/user/messages" style="color:red;text-align:center;">signup messages</a>
    	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
	<script>
		function signuplink(){
			alert("messages 페이지에서 회원가입전 주의사항을 확인해주시고 가입진행해주세요.");
		}
	
		function dupcheck(){
			$.ajax({
				url:"/user/dupcheck",
				type:"post",
				data:{id:$("#id").val()},
				success:function(data){
					if(data == 'exist'){
						alert("존재하는 아이디입니다");
					}else{
						alert("사용 가능한 아이디입니다");
					}
				}
			});
		}
		
		function sample4_execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

	                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var roadAddr = data.roadAddress; // 도로명 주소 변수
	                var extraRoadAddr = ''; // 참고 항목 변수

	                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                    extraRoadAddr += data.bname;
	                }
	                // 건물명이 있고, 공동주택일 경우 추가한다.
	                if(data.buildingName !== '' && data.apartment === 'Y'){
	                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                }
	                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                if(extraRoadAddr !== ''){
	                    extraRoadAddr = ' (' + extraRoadAddr + ')';
	                }

	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('sample4_postcode').value = data.zonecode;
	                document.getElementById("sample4_roadAddress").value = roadAddr;
	                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
	                
	                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
	                if(roadAddr !== ''){
	                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
	                } else {
	                    document.getElementById("sample4_extraAddress").value = '';
	                }

	                var guideTextBox = document.getElementById("guide");
	                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
	                if(data.autoRoadAddress) {
	                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
	                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
	                    guideTextBox.style.display = 'block';

	                } else if(data.autoJibunAddress) {
	                    var expJibunAddr = data.autoJibunAddress;
	                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
	                    guideTextBox.style.display = 'block';
	                } else {
	                    guideTextBox.innerHTML = '';
	                    guideTextBox.style.display = 'none';
	                }
	            }
	        }).open();
	    }
		
		function emailCertify(btn){
			$(btn).attr("disabled","disabled");
			$("#loader").addClass("loader");
			$.ajax({
				url:"/user/emailcertify",
				type:"post",
				data:{email:$("[name=email]").val()},
				success:function(data){
					if(data == "null"){
						$("#email-error").text("이메일을 입력해주세요");
					}else if(data == "duplicated"){
						$("#email-error").text("이미 가입되어있는 이메일 주소 입니다.");
					}else if(data == "error"){
						$("#email-error").text("이메일 형식이 올바르지 않습니다.");
					}else{
						$("#loader").removeClass("loader");
						$(btn).removeAttr("disabled");
					}
					console.log(data);
				}
			});
			
		}
		
	</script>
</body>
</html>