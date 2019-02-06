<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" 
 	  content="width=device-width, initial-scale=1">
<title></title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
<style>
	.product-list{
		height:400px;
		background-color: #eee;
		box-shadow: 3px 3px 2px #000;
	}
	.product-list caption{
		font-size: 20px;
		font-weight: bolder;
		text-align: center;
	}
	.product-list thead > tr{
		background-color: #444;
		color: #fff;
	}
	.product-list td, .product-list th{
		text-align: center;	
		padding: 10px !important;
	}
	.error{
		color:red;
	}
</style>
</head>
<body>
	<div class="jumbotron">
		<h1 class="text-center">재고관리 시스템</h1>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-sm-4">
				<div class="product-list">
					<table class="table table-hover">
						<caption>입고현황</caption>
						<thead>
							<tr>
								<th>제품명</th>
								<th>입고수량</th>
								<th>입고날짜</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="product" 
									   items="${productMap.inputList }">
							<tr>
								<td>${product.name }</td>
								<td>${product.count }</td>
								<td>${product.regdate }</td>
							</tr>
							</c:forEach>
						</tbody>
					</table>			
				</div>
			</div>
			<div class="col-sm-4">
				<div class="product-list">
					<table class="table table-hover">
						<caption>재고현황</caption>
						<thead>
							<tr>
								<th>제품명</th>
								<th>재고수량</th>
								<th>변동날짜</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="product" 
									   items="${productMap.remainList }">
							<tr>
								<td>${product.name }</td>
								<td>${product.count }</td>
								<td>${product.regdate }</td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="product-list">
					<table class="table table-hover">
						<caption>출고현황</caption>
						<thead>
							<tr>
								<th>제품명</th>
								<th>출고수량</th>
								<th>출고날짜</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="product" 
									   items="${productMap.outputList }">
							<tr>
								<td>${product.name }</td>
								<td>${product.count }</td>
								<td>${product.regdate }</td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-4">
				<h4 class="text-center">제품 입고</h4>
				<form:form class="form-horizontal"
						   action="/product/add/input"
						   method="post"
						   modelAttribute="inputProduct">
					<div class="form-group">
						<form:label path="name"
									class="control-label col-xs-3">제품명</form:label>
						<div class="col-xs-9">
							<form:input path="name" class="form-control"/>
							<form:errors path="name" class="error"/>
						</div>
					</div>
					<div class="form-group">
						<form:label path="count"
									class="control-label col-xs-3">수량</form:label>
						<div class="col-xs-9">
							<form:input path="count" class="form-control"
										type="number"
										min="1"
										max="99999"/>
							<form:errors path="count" class="error"/>
						</div>
					</div>
					<div class="form-group">
						<div class="col-xs-9 col-xs-offset-3">
							<button class="btn btn-primary btn-block" 
						       	    type="submit">입고</button>
						</div>
					</div>
								
				</form:form>				
			</div>
			<div class="col-sm-4 col-sm-offset-4">
				<h4 class="text-center">제품 출고</h4>
				<form:form class="form-horizontal"
						   action="/product/add/output"
						   method="post"
						   modelAttribute="outputProduct">
					<div class="form-group">
						<form:label path="name"
									class="control-label col-xs-3">제품명</form:label>
						<div class="col-xs-9">
							<form:input path="name" class="form-control"/>
							<form:errors path="name" class="error"/>
						</div>
					</div>
					<div class="form-group">
						<form:label path="count"
									class="control-label col-xs-3">수량</form:label>
						<div class="col-xs-9">
							<form:input path="count" class="form-control"
							            pattern="[1-9]\d{0,4}"
							            title="1~99999의 숫자"/>
							<form:errors path="count" class="error"/>
						</div>
					</div>
					<div class="form-group">
						<div class="col-xs-9 col-xs-offset-3">
							<button class="btn btn-primary btn-block" 
						       	    type="submit">출고</button>
						    <c:if test="${error != null }">
						    <span class="error">${error }</span>
						    </c:if>
						</div>
					</div>
								
				</form:form>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>