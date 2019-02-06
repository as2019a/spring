<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
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
	
</style>
</head>
<body>
	<div class="jumbotron">
		<h2 class="text-center">재고관리 시스템</h2>
	</div>
	<!--  -->
	<div class="container">
		<div class="row">
			<div class="col-sm-4">
				<table class="table table-striped">
					<thead>
				      <tr>
				        <th class="text-center">Name</th>
				        <th class="text-center">Count</th>
				        <th class="text-center">Regdate</th>
				      </tr>
				    </thead>
				    <tbody>
				    	<tr> <!-- for:each -->
				    		<td class="text-center">${product_input.name }</td>
				    		<td class="text-center">${product_input.count }</td>
				    		<td class="text-center">${product_input.regdate }</td>
				    	</tr>
				    </tbody>
			    </table>
			</div>
			<div class="col-sm-4">
				<table class="table table-striped">
					<thead>
				      <tr>
				        <th class="text-center">Name</th>
				        <th class="text-center">Count</th>
				        <th class="text-center">Regdate</th>
				      </tr>
				    </thead>
				    <tbody>
				    	<tr>
				    		<td class="text-center"></td>
				    		<td class="text-center"></td>
				    		<td class="text-center"></td>
				    	</tr>
				    </tbody>
			    </table>
			</div>
			<div class="col-sm-4">
				<table class="table table-striped">
					<thead>
				      <tr>
				        <th class="text-center">Name</th>
				        <th class="text-center">Count</th>
				        <th class="text-center">Regdate</th>
				      </tr>
				    </thead>
				    <tbody>
				    	<tr>
				    		<td class="text-center"></td>
				    		<td class="text-center"></td>
				    		<td class="text-center"></td>
				    	</tr>
				    </tbody>
			    </table>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>