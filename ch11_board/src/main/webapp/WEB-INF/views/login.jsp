<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="modal fade" id="loginModal">
	<div class="modal-dialog modal-sm"">
		<div class="modal-content">
			<div class="modal-header">
				<div type="button"
					class="button close"
					data-dismiss="modal">&times;</div>
				<h4><span class="span glyphicon glyphicon-log-in"></span>Sign in</h4>
			</div>
			<div class="modal-body">
				<form action="/user/signin" method="post">
					<input type="hidden" 
					  	     name="${_csrf.parameterName }"
					  	     value="${_csrf.token }" />
					<c:if test="${param.signin != null }">
					<div class="form-group">
						<span style="color:blue;">로그인 후 이용가능합니다.</span>
					</div>
					</c:if>
					<c:if test="${param.signout != null }">
					<div class="form-group">
						<span style="color:black;">로그아웃 되었습니다.</span>
					</div>
					</c:if>
					<c:if test="${param.fail != null }">
					<div class="form-group">
						<span style="color:red;">아이디 또는 비밀번호가 불일치합니다.</span>
					</div>
					</c:if>
					<div class="form-group">
						<input type="text" class="form-control"
							   placeholder="Enter ID" name="id"
							   value="admin" />
					</div>
					<div class="form-group">
						<input type="password" class="form-control"
							   placeholder="Enter Password" 
							   name="password"
							   value="1111" />
					</div>
					<button class="btn btn-primary btn-block"
							type="button" 
							onclick="signin(this.form);">Sign in</button>
				</form>
			</div>
		</div>
	</div>
</div>
<script>
	<c:if test="${param.fail != null || param.signin != null || param.signout != null}">
	$("#loginModal").modal("show");
	</c:if>
	function showLoginModal(){
		$("#loginModal").modal("show");
	}
	function signin(f){
		if(f.id.value == ""){
			alert("아이디를 입력해 주세요");
			f.id.focus;
			return;
		}
		
		if(f.password.value == ""){
			alert("비밀번호를 입력해 주세요");
			f.password.focus;
			return;
		}
		
		f.submit();
	}
</script>