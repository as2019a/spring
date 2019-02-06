<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form"  uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" 
 	  content="width=device-width, initial-scale=1">
<title>Maven Company Board Page</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.css" rel="stylesheet">
<style>
	.jumbotron{
		margin-bottom: 5px;
	}
	
	.error{color:red;}
	
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
		<h1 class="text-center">Maven Company Board Page</h1>
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
					<a class="navbar-brand" href="/main">Maven Company Main Page</a>
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
	<div class="content">
		<div class="container-fluid" style="width:60% ">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4>${board.title }</h4>
					<hr style="margin: 5px 0;"/>
					<div class="text-right">
						<span class="glyphicon glyphicon-user"></span>
						${board.users_id }
						&nbsp;&nbsp;
						<span class="glyphicon glyphicon-time"></span>
						${board.regdate }
						&nbsp;&nbsp;
						<span class="badge">${board.hit }</span>
					</div>
				</div>
				<div class="panel-body">
					${board.content }
				</div>
				<div class="border-footer text-right"
					style="padding: 20px;">
					<sec:authorize access="hasRole('ROLE_ADMIN')">
						<a href="/board/update?id=${board.id }" class="btn btn-warning">수정</a>
						<a href="/board/delete?id=${board.id }" class="btn btn-danger">삭제</a>
					</sec:authorize>
					<c:if test="${requsetScope.user.id eq board.user_id }">
						<a href="/board/update?id=${board.id }" class="btn btn-warning">수정</a>
						<a href="/board/delete?id=${board.id }" class="btn btn-danger">삭제</a>
					</c:if>
					<a href="javascript:history.back();" class="btn btn-primary">목록</a>
				</div>
			</div>
			<div class="reply-form">
				<h4>Leave a Comment</h4>
				<form action="/reply/insert" method="post">
					<input type="hidden" 
					  	     name="${_csrf.parameterName }"
					  	     value="${_csrf.token }" />
					<input type="hidden" name="board_id" 
						   value="${board.id}" />
					<div class="form-group">
						<textarea name="content" rows="3" 
								  class="form-control"
								  required></textarea>	  
					</div>
					<div class="form-group text-right">
						<button type="submit" 
								class="btn btn-primary">등록</button>
					</div>
				</form>
			</div>
			<div class="reply-list">
				<p>
					<span class="badge">
						${fn:length(board.replyList) }
					</span> 
					Comments
				</p>
				<c:forEach var="reply" items="${board.replyList }">
				<div class="reply" style="margin-left: ${reply.depth*30}px">
					<div class="reply-header">
						<span class="glyphicon glyphicon-user"></span>
						${reply.users_id } &nbsp;&nbsp;
						<span class="glyphicon glyphicon-time"></span>
						${reply.regdate } &nbsp;&nbsp;
						<button class="btn btn-primary btn-xs"
								type="button"
								data-toggle="collapse"
								data-target="#form_${reply.id }">댓글</button>
					</div>
					<div class="reply-body">
						<c:if test="${reply.depth != 0 }">
						<i class="fas fa-reply" style="transform:rotate(180deg)"></i>
						</c:if>
						${reply.content }
					</div>
					<div class="rereply-form collapse" id="form_${reply.id }">
						<form action="/reply/rereply" method="post">
							<input type="hidden" 
							  	     name="${_csrf.parameterName }"
							  	     value="${_csrf.token }" />
							<input type="hidden" name="board_id" 
								   value="${board.id}" />
							<input type="hidden" name="ref" 
								   value="${reply.id}" />
							<div class="form-group">
								<textarea name="content" rows="3" 
										  class="form-control"
										  required></textarea>	  
							</div>
							<div class="form-group text-right">
								<button type="submit" 
										class="btn btn-primary">등록</button>
							</div>
						</form>
					</div>
				</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<div class="footer">
		Maven Company Made By <a href="/footerceo">ceo</a>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/lang/summernote-ko-KR.min.js"></script>
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
		
		function checkForm(f){
    		if(f.title.value == ""){
    			alert("제목을 입력해 주세요");
    			f.title.focus();
    			return;
    		}
    		
    		if(f.content.value == ""){
    			alert("내용을 입력해 주세요");
    			//f.content.focus();
    			$(".note-editable").focus();
    			return;
    		}
    		
    		f.submit();
    	}
    
    	$("#content").summernote({
    		height:400,
    		//focus: true,
    		disableResizeEditor:true,
    		lang: 'ko-KR',
    		callbacks:{
    			onImageUpload:sendFile,
    			onMediaDelete:deleteFile
    		}
    	});
    	function deleteFile(target){
    		var src = target[0].src.substring(21);
    		console.log("src",src);
    		$.ajax({
    			url:"/filedelete",
    			type:"post",
    			data:{src:src},
    			success:function(data){
    				console.log(data);
    			}
    		});
    	}
    	
    	function sendFile(files, editor, welEditable){
    		//console.log(files[0]);
    		var data = new FormData();
    		data.append('upload', files[0]);
    		
    		$.ajax({
    			url:"/fileupload",
    			contentType:false,
    			processData:false,
    			data:data,
    			type:"post",
    			success:function(data){
    				//console.log(data);
    				$("#content").summernote(
    						'editor.insertImage', data.url);
    			},error:function(error){
    				console.error(error);
    			}
    		});
    	}
    	
	</script>
</body>
</html>