<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" 
 	  content="width=device-width, initial-scale=1">
<title>Executives Web Page</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
<style>
	.jumbotron{
		margin-bottom: 5px;
		text-align:center;
		background-clip:padding-box;
		background-color:#A3CB38;
	}
	
	.jumbotron:hover{
		color:olive;
	}
	
	.col-cm-3{
		height: 100%;
	}
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 550px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      background-color: #f1f1f1;
      height: 100%;
    }
        
    /* On small screens, set height to 'auto' for the grid */
    @media screen and (max-width: 767px) {
      .row.content {height: auto;} 
    }
  </style>
</head>
<body>
	<div class="jumbotron">
	    <h1> Executives Private Page</h1>      
	    <h3>본 기업 사내 간부전용 페이지 입니다.</h3>
	    <p><b>접근권한 : admin(본 기업 간부(임원)에 한해 가능합니다.)</b></p>    
	</div>
	<nav class="navbar navbar-inverse visible-xs">
	  <div class="container-fluid">
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>                        
	      </button>
	      <a class="navbar-brand" href="executives/onadmin">Executives Private Page</a>
	    </div>
	    <div class="collapse navbar-collapse" id="myNavbar">
	      <ul class="nav navbar-nav">
	        <li class="active"><a href="/main">Main</a></li>
	        <li><a href="executives/executboard">Executboard</a></li>
	        <li><a href="executives/maps">Maps</a></li>
	        <li><a href="executives/etiquettes">Etiquette</a></li>
	        <li><a href="executives/"></a></li>
	      </ul>
	    </div>
	  </div>
	</nav>
	
	<div class="container-fluid">
	  <div class="row content">
	    <div class="col-sm-3 sidenav hidden-xs">
	      <h2>Executives Private Page</h2>
	      <ul class="nav nav-pills nav-stacked">
	        <li class="active"><a href="/main">Main</a></li>
	        <li><a href="executives/executboard">Executboard</a></li>
	        <li><a href="executives/maps">Maps</a></li>
	        <li><a href="executives/etiquettes">Etiquette</a></li>
	        <li><a href="executives/"></a></li>
	      </ul><br>
			</div>
		</div>
	    <br>
		    <div class="col-sm-9">
		      <div class="col-cm-3">
		      	<h5></h5>
		      </div>
		      <div class="col-cm-3">
		      	<h5>2</h5>
		      </div>
		      <div class="col-cm-3">
		      	<h5>3</h5>
		      </div>
		    </div>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>