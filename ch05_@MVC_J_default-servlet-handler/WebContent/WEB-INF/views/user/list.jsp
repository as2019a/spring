<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" 
 	  content="width=device-width, initial-scale=1">
<title>User</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
<link rel="stylesheet" href="/public/css/style.css" />
<style>
	/* h3{
		padding: 22px;
		margin: 2px;
		color: green;
		background-color: blue;
	}
	h3:hover{
		padding: 22px;
		margin: 2px;
		color: white;
		background-color: orange;
	} */
	.table>thead{
		color: navy;
	}
	.table>tbody{
		color: blue;
	}
</style>
</head>
<body>
	<div class="container">
		<h3 class="text-center red">User List</h3>
		<div class="row">
			<div class="col-sm-6 col-sm-offset-3">
				<form action="/user/add" method="post">
					<div class="form-group">
						<div class="input-group">
							<input type="text" class="form-control"
							   name="id" placeholder="insert id..." />
							<div class="input-group-addon" style="padding:0;border:0">
								<button type="button" class="btn btn-default" 
									onclick="dualCheck();" 
									style="background-color:green;color:gray;">중복확인</button>
							</div>
						</div>
					</div>
					<div class="form-group">	
						<input type="password" class="form-control" 
								name="password" placeholder="insert password..."/>
					</div>
					<div class="form-group">
						<input type="text" class="form-control" 
								name="name" placeholder="insert name..."/>
					</div>
					<div class="form-group">
						<div class="row">
							<div class="col-sm-6">
								<select name="bjob" id="bigJobSelect"
										class="form-control"
										onchange="getSmallJobList(this.value)">
									<option value="">직업 대분류</option>	
								</select>
							</div>
							<div class="col-sm-6">
								<select name="sjob" id="smalljobSelect"
										class="form-control">
									<option value="">직업 소분류</option>	
								</select>
							</div>
						</div>
					</div>
					<div class="form-group">
						<button class="btn btn-primary btn-block" type="submit">추가</button>
					</div>
				</form>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-6 col-sm-offset-3">
				<table class="table table-striped">
					<thead class="ta">
						<tr>
							<th class="text-center">ID</th>
							<th class="text-center">PASSWORD</th>
							<th class="text-center">NAME</th>
							<th class="text-center">수정</th>
							<th class="text-center">삭제</th>
						</tr>
					</thead>
					<tbody class="ty">
						<c:forEach var="user" items="${userList }">
							<tr>
								<td class="text-center">${user.id }</td>
								<td class="text-center">${user.password }</td>
								<td class="text-center">${user.name }</td>
								<td class="text-center">
									<button class="btn btn-success"
											type="button"
											onclick="location.href='/user/edit?id=${user.id }'">수정</button>
								</td>
								<td class="text-center">
									<button class="btn btn-danger"
											type="button"
											onclick="location.href='/user/delete?id=${user.id }'">삭제</button>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<script>
		$.ajax({
			url:"/job/biglist",
			type:"get",
			success:function(data){
				console.log(data);
				for(var i=0; i<data.length; i++){
					$("#bigJobSelect").append(
						`<option value="\${data[i]}">
							\${data[i]}
						</option>`);
				}
			}
		});
		
		function getSmallJobList(bjob){
			console.log(bjob);
			if(!bjob){
				return;	
			}
			
			$.ajax({
				url:"/job/smalllist",
				data:{bjob:bjob},
				type:"get",
				success:function(data){
					//console.log(data);
					$("#smallJobSelect").empty();
					for(var i=0; i<data.length; i++){
						$("#smallJobSelect").append(`
							<option value="\${data[i]}">
								\${data[i]}
							</option>
						`);
					}
				}
			});
		}
		
		function dualCheck() {
			$.ajax({
				url:"/user/dualcheck",
				type:"get",
				data:{id:$("[name='id']").val()},
				success:function(data){
					if(data == 'exist'){
						alert("존재하는 아이디 입니다.");
					}else{
						alert("사용가능한 아이디 입니다.");
					}
				}
			});
		}
	</script>
</body>
</html>