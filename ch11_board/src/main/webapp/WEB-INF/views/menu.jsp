<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %> 
<div class="nav navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" 
					class="navbar-toggle"
					data-toggle="collapse"
					data-target="#menu">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" 
			   href="/product/list">ItTEM</a>
		</div>
		<div class="collapse navbar-collapse" id="menu">
			<ul class="nav navbar-nav">
			<c:forEach var="category" 
					   items="${categoryList }">
	<li <c:if test="${category == param.category }">class="active"</c:if>>
		<a href="/product/list?category=${category}">
			${fn:toUpperCase(category)}
		</a>
	</li>
			</c:forEach>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li>
					<a href="/board/list">
						<span class="glyphicon glyphicon-list"></span>
						Board
					</a>
				</li>
				<sec:authorize access="!isAuthenticated()">
				<li>
					<a href="javascript:showLoginModal();">
						<span class="glyphicon glyphicon-log-in"></span>
						Sign in
					</a>
				</li>
				</sec:authorize>
				<sec:authorize access="hasRole('ROLE_ADMIN')">
				<li>
					<a href="/manage">
						<span class="glyphicon glyphicon-cog"></span>
						Manage
					</a>
				</li>
				</sec:authorize>
				<sec:authorize access="isAuthenticated() and !hasRole('ROLE_ADMIN')">
				<li>
					<a href="/mypage">
						<span class="glyphicon glyphicon-user"></span>
						Mypage
					</a>
				</li>
				</sec:authorize>
				<sec:authorize access="isAuthenticated()">
				<li>
					<a href="javascript:signout()">
						<span class="glyphicon glyphicon-log-out"></span>
						Sign out
					</a>
				</li>
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
				</script>
				</sec:authorize>
				
			</ul>
		</div>
	</div>
</div>