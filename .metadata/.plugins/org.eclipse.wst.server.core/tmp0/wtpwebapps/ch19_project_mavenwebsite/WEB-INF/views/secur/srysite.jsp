<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"  uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" 
 	  content="width=device-width, initial-scale=1">
<title>Maven Company Srysite Page</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.css" rel="stylesheet">
<style type="text/css">
	.jumbotron{
		margin-bottom: 5px;
		padding:80px;
		background-color:#90A4AE;
		text-align:center;
	}
	
	#sec01{
		color:#E0E0E0;
	}
	
	#sec01:hover {
		color:blue;
	}
	
	.topnav {
	  overflow: hidden;
	  background-color: #f1f1f1;
	}
	
	.topnav a {
	  float: left;
	  display: block;
	  color: black;
	  text-align: center;
	  padding: 14px 16px;
	  text-decoration: none;
	  font-size: 17px;
	  border-bottom: 3px solid transparent;
	}
	
	.topnav a:hover {
	  border-bottom: 3px solid red;
	}
	
	.topnav a.active {
	  border-bottom: 3px solid red;
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
		<h1 id="sec01" style="font-size:xx-large;">Maven Security Server Management Site</h1>
		<h3 style="font-size:x-large;"><i class='fas fa-server' style='font-size:24px'></i> Security Server Management</h3>
	</div>
	<div class="container">
	  <div class="row">
	   	<div class="topnav">
		  <a class="active" href="/secur/srysite">Home</a>
		  <a href="/main">Maven Company Main</a>
		  <a href="/user/messages" title="Messages" onclick="messagesone();">Messages Page</a>
		  <a href="/secur/secboard">SecBoard</a>
		  <a href="/secur/contact">Contact</a>
		</div>
		
		<div style="padding-left:16px">
		  <h2 style="text-align:center;font:bold;font-size:xx-large;font-weight:600;">Maven Security Server Management Site</h2>
		  <p style="text-align:center;">Maven Security Server 관리 페이지 입니다.</p>
		</div>
	  </div>
	  <div class="row">
	    <div class="col-md-4">
	    	<button class="btn btn-success" onclick="getElementById('demo').innerHTML=Date()" style='font-size:24px'>Eye Times <i class='fas fa-eye'></i></button>
	    	<a type="button" class="btn btn-success" style='font-size:24px' href="">Server <i class='fas fa-server'></i></a>
	    	<a type="button" class="btn btn-success" style='font-size:24px' href="">Marker-alt <i class='fas fa-map-marker-alt'></i></a>
	    	<a type="button" class="btn btn-success" style='font-size:24px' href="">MemberShip Table <i class='fas fa-table'></i></a>
	    	<p id="demo"></p>
	    </div>
	    <div class="col-md-4">
	    	
	    </div>
	    <div class="col-md-4">
	    	<h2>Server 관리자에게 메일 보내기</h2>
			  <form class="form-horizontal" action="/action_page.php">
			  <form:form action="/mail/mailSending" method="post"
							   modelAttribute="board">
			    <div class="form-group">
			      <label class="control-label col-sm-2" for="email">Email:</label>
			      <div class="col-sm-10">
			        <p class="form-control-static" id="tomail">as2006a@naver.com</p>
			      </div>
			    </div>
			    <div class="form-group">
			      <label class="control-label col-sm-2" for="title">Email Title:</label>
			      <div class="col-sm-10">          
			        <input class="form-control"
								path="title" 
								placeholder="메일 제목을 입력해 주세요"/>
					<form:errors path="title" class="error"/>
			      </div>
			    </div>
			    <div class="form-group">
			      <label class="control-label col-sm-2" for="email">Email board</label>
			    </div> 
			    <div class="form-group">      
			    	<textarea class="form-control" id="content"
									  path="content"
									  placeholder="관리자에게 보낼 메일 내용을 입력해 주세요"></textarea>
							<form:errors path="content" class="error"/>	
			      <div class="col-sm-offset-2 col-sm-10">
			        <button type="submit" class="btn btn-danger" >관리자에게 메일 보내기</button>
			      </div>
			    </div>
			    </form:form>
			  </form>
	    </div>
	  </div>
	 </div>
	<div class="footer">
		<p>Maven Security Server Site</p>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/lang/summernote-ko-KR.min.js"></script>
	<script type="text/javascript">
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