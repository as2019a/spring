<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" 
 	  content="width=device-width, initial-scale=1">
<title>Toggle Start-up Company</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
<style>
	body {
	  font-family: "Lato", sans-serif;
	}
	
	.sidebar {
	  height: 100%;
	  width: 0;
	  position: fixed;
	  z-index: 1;
	  top: 0;
	  left: 0;
	  background-color: #111;
	  overflow-x: hidden;
	  transition: 0.5s;
	  padding-top: 60px;
	}
	
	.sidebar a {
	  padding: 8px 8px 8px 32px;
	  text-decoration: none;
	  font-size: 25px;
	  color: #818181;
	  display: block;
	  transition: 0.3s;
	}
	
	.sidebar a:hover {
	  color: #f1f1f1;
	}
	
	.sidebar .closebtn {
	  position: absolute;
	  top: 0;
	  right: 25px;
	  font-size: 36px;
	  margin-left: 50px;
	}
	
	.openbtn {
	  font-size: 20px;
	  cursor: pointer;
	  background-color: #111;
	  color: white;
	  padding: 10px 15px;
	  border: none;
	}
	
	.openbtn:hover {
	  background-color: #444;
	}
	
	#main {
	  transition: margin-left .5s;
	  padding: 16px;
	}
	
	/* On smaller screens, where height is less than 450px, change the style of the sidenav (less padding and a smaller font size) */
	@media screen and (max-height: 450px) {
	  .sidebar {padding-top: 15px;}
	  .sidebar a {font-size: 18px;}
	}
	
	/* Slideshow container */
	.slideshow-container {
	  position: relative;
	  background: #f1f1f1f1;
	}
	
	/* Slides */
	.mySlides {
	  display: none;
	  padding: 60px;
	  text-align: center;
	}
	
	/* Next & previous buttons */
	.prev, .next {
	  cursor: pointer;
	  position: absolute;
	  top: 50%;
	  width: auto;
	  margin-top: -30px;
	  padding: 16px;
	  color: #888;
	  font-weight: bold;
	  font-size: 20px;
	  border-radius: 0 3px 3px 0;
	  user-select: none;
	}
	
	/* Position the "next button" to the right */
	.next {
	  position: absolute;
	  right: 0;
	  border-radius: 3px 0 0 3px;
	}
	
	/* On hover, add a black background color with a little bit see-through */
	.prev:hover, .next:hover {
	  background-color: rgba(0,0,0,0.8);
	  color: white;
	}
	
	/* The dot/bullet/indicator container */
	.dot-container {
	    text-align: center;
	    padding: 20px;
	    background: #ddd;
	}
	
	/* The dots/bullets/indicators */
	.dot {
	  cursor: pointer;
	  height: 15px;
	  width: 15px;
	  margin: 0 2px;
	  background-color: #bbb;
	  border-radius: 50%;
	  display: inline-block;
	  transition: background-color 0.6s ease;
	}
	
	/* Add a background color to the active dot/circle */
	.active, .dot:hover {
	  background-color: #717171;
	}
	
	/* Add an italic font style to all quotes */
	q {font-style: italic;}
	
	/* Add a blue color to the author */
	.author {color: cornflowerblue;}
	
	.callout {
	  position: fixed;
	  bottom: 120px;
	  right: 20px;
	  margin-left: 20px;
	  max-width: 300px;
	}
	
	.callout-header {
	  padding: 25px 15px;
	  background: #555;
	  font-size: 30px;
	  text-align:center;
	  color: white;
	}
	
	.callout-container {
	  padding: 15px;
	  background-color: #ccc;
	  color: black
	}
	
	.closebtn {
	  position: absolute;
	  top: 10px;
	  right: 15px;
	  color: white;
	  font-size: 30px;
	  cursor: pointer;
	}
	
	.closebtn:hover {
	  color: lightgrey;
	}
	
	.footer {
	   position: fixed;
	   left: 0;
	   bottom: 0;
	   padding: 15px;
	   width: 100%;
	   background-color: #43A047;
	   color: white;
	   text-align: center;
	}
</style>
</head>
<body>
	<div id="mySidebar" class="sidebar">
	  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
	  <a href="/main">Maven Company Main Site</a>
	  <a href="/tog/togglestartup">Toggle Start-up</a>
	  <a href="/tog/togglestartuptimes">Toggle Start-up Times</a>
	  <a href="/tog/toggledatacenter">Toggle Data Center</a>
	  <a href="/tog/togglecsv">Toggle CSV</a>
	</div>
	
	<div id="main">
	  <button class="openbtn" onclick="openNav()">☰ Toggle Sidebar</button>  
	  <h2 class="text-center" style="font-size:xx-large;color:blue;"><b>Toggle Start-up Company</b></h2>
	  <p class="text-center"><mark>Maven Company</mark> Gruop <b>Toggle Start-Up Company</b> Site.</p>
	</div>
	
	<div class="row" >
		<div class="col-sm-12">
			<div class="col-sm-3">
				<h5>Left Side Toggle Menu</h5>
			</div>
			<div class="col-sm-6" style="background-color:#ff8b00;padding:1px;">
				<p><button onclick="myFunction()" class="btn btn-info" style="font-size:large;">Click Button</button></p>
				<div id="myDIV">Hello~!!</div>
				<div id="div1" class="fa" style="font-size:x-large;"></div>
				<p>This example demonstrates how to use an icon library to make an animated effect.</p>
				<div class="slideshow-container">

				<div class="mySlides">
				  <q>I love you the more in that I believe you had liked me for my own sake and for nothing else</q>
				  <p class="author">- John Keats</p>
				</div>
				
				<div class="mySlides">
				  <q>But man is not made for defeat. A man can be destroyed but not defeated.</q>
				  <p class="author">- Ernest Hemingway</p>
				</div>
				
				<div class="mySlides">
				  <q>I have not failed. I've just found 10,000 ways that won't work.</q>
				  <p class="author">- Thomas A. Edison</p>
				</div>
				
				<a class="prev" onclick="plusSlides(-1)">❮</a>
				<a class="next" onclick="plusSlides(1)">❯</a>
				
				</div>
				
				<div class="dot-container">
				  <span class="dot" onclick="currentSlide(1)"></span> 
				  <span class="dot" onclick="currentSlide(2)"></span> 
				  <span class="dot" onclick="currentSlide(3)"></span> 
				</div>
			</div>
			<div class="col-sm-3">
				<div class="callout">
				  <div class="callout-header">Toggle Start-Up</div>
				  <div class="callout-container">
				    <p>Toggle Start-up New 2019 yer message. <a href="/tog/Learnmore">Learn more</a> Toggle GLOBAL More.</p>
				  </div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="footer">
	  <p><b>Toggle Start-up Company</b> Footer</p>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		function openNav() {
		  document.getElementById("mySidebar").style.width = "250px";
		  document.getElementById("main").style.marginLeft = "250px";
		}

		function closeNav() {
		  document.getElementById("mySidebar").style.width = "0";
		  document.getElementById("main").style.marginLeft= "0";
		}
		
		function myFunction() {
			var x = document.getElementById("myDIV");
			if (x.innerHTML === "Hello~!!") {
			  x.innerHTML = "Toggle Start-Up Company!!";
			} else {
			  x.innerHTML = "Hello~!!";
			}
		}
		
		function chargebattery() {
			  var a;
			  a = document.getElementById("div1");
			  a.innerHTML = "&#xf244;";
			  setTimeout(function () {
			      a.innerHTML = "&#xf243;";
			    }, 1000);
			  setTimeout(function () {
			      a.innerHTML = "&#xf242;";
			    }, 2000);
			  setTimeout(function () {
			      a.innerHTML = "&#xf241;";
			    }, 3000);
			  setTimeout(function () {
			      a.innerHTML = "&#xf240;";
			    }, 4000);
			}
			chargebattery();
			setInterval(chargebattery, 5000);
			
			var slideIndex = 1;
			showSlides(slideIndex);

			function plusSlides(n) {
			  showSlides(slideIndex += n);
			}

			function currentSlide(n) {
			  showSlides(slideIndex = n);
			}

			function showSlides(n) {
			  var i;
			  var slides = document.getElementsByClassName("mySlides");
			  var dots = document.getElementsByClassName("dot");
			  if (n > slides.length) {slideIndex = 1}    
			  if (n < 1) {slideIndex = slides.length}
			  for (i = 0; i < slides.length; i++) {
			      slides[i].style.display = "none";  
			  }
			  for (i = 0; i < dots.length; i++) {
			      dots[i].className = dots[i].className.replace(" active", "");
			  }
			  slides[slideIndex-1].style.display = "block";  
			  dots[slideIndex-1].className += " active";
			}
	</script>
</body>
</html>