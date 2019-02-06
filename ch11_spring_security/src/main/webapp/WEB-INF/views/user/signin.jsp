<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" 
 	  content="width=device-width, initial-scale=1">
<title>Signin Page</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
</head>
<body>
	<div class="jumbotron">
		<h1 class="text-center">Signin Page</h1>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-sm-6 col-sm-offset-3">
				<form action="/user/signin" 
					  class="form-horizontal"
					  method="post">
					  <input type="hidden" 
					  	     name="${_csrf.parameterName }"
					  	     value="${_csrf.token }" />
					  <c:if test="${param.signout != null }">
					  <div class="form-group">
					  	<div class="col-xs-9 col-xs-offset-3">
							<span style="color:blue;" class="error">로그아웃 되었습니다</span>
					    </div>
					  </div>
					  </c:if>
					  <div class="form-group">
					  	<label class="control-label col-xs-3">ID</label>
					  	<div class="col-xs-9">
					  		<input type="text" class="form-control"
					  			   name="id" />
					  	</div>
					  </div>
					  <div class="form-group">
					  	<label class="control-label col-xs-3">PWD</label>
					  	<div class="col-xs-9">
					  		<input type="password" class="form-control"
					  			   name="password" />
					  	</div>
					  </div>
					  <c:if test="${param.fail != null }">
					  <div class="form-group">
					  	<div class="col-xs-9 col-xs-offset-3">
							<span style="color:red;" class="error">아이디 또는 비밀번호가 일치하지 않습니다</span>
					    </div>
					  </div>
					  </c:if>
					  <div class="form-group">
					  	<div class="col-xs-9 col-xs-offset-3">
					  		<button type="submit"
					  				class="btn btn-primary btn-block">Signin</button>
					  	</div>
					  </div>
				</form>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>