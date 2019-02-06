<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" 
 	  content="width=device-width, initial-scale=1">
<title>AJAX BOOK</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
<style>
	table, th, td {
	  border: 1px solid black;
	  color: green;
	}
</style>
</head>
<body>
	<form>
		<input type="text" name="name" placeholder="책 제목" />
		<input type="text" name="price" placeholder="책 가격" />
		<input type="text" name="authors" placeholder="저자(들), 여러명일 경우, 로 구분"/>
		<button type="button" onclick="send(this.form)">전송</button>
	</form>
	<button type="button" onclick="getBookList();">책목록</button>
	<table id="bookList">
		<tr>
			<th class="text-center">제목</th>
			<th class="text-center">가격</th>
			<th class="text-center">저자</th>
		</tr>
		
	</table>
	<!-- 0: {name: "APIs", price: 15000, authors: Array(1)}
		1: {name: "월드리포트", price: 9500, authors: Array(1)} -->
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<script>
		function getBookList(){
			$.ajax({
				url:"/ajax/response",
				type:"get",
				success:function(data){
					//console.log(data); //자율
					//오픈API방식 이용
					for(var i = 0; i < data.length; i++){
						$("#bookList").append(
								//template literal
								`<tr>
									<td class="text-center">\${data[i].name}</td>
									<td class="text-center">\${data[i].price}</td>
									<td class="text-center">\${data[i].authors}</td>
								</tr>`
								);
					}
					
				}
			});
		}
		
		function send(f){
			var data = {
					name:f.name.value,
					price:parseInt(f.price.value),
					authors:f.authors.value.split(",")
			}
			//console.log(data);
			$.ajax({
				type:"post",
				data:JSON.stringify(data),
				//dataType:"json",
				url:"/ajax/request",
				processData: true,
				contentType:"application/json; charset=UTF-8",
				success:function(result){
					console.log(result);
				},error:function(error){
					console.log(error);
				}
			});
		}
	</script>
</body>
</html>