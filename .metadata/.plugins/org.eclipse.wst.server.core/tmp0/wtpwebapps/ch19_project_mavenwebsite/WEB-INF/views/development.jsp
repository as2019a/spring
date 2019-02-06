<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" 
 	  content="width=device-width, initial-scale=1">
<title>THE Development Page</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
<style type="text/css">
	.jumbotron{
		margin-bottom: 5px;
		background-color:#fbc531;
	}
	
	h5{
		text-align:center;
	}
	
	#sa:hover{
		color:fuchsia;
	}
	
	#sc:hover{
		color:orange;
	}
	
	#sf:hover{
		color:lime;
	}
	
	table {
	  font-family: arial, sans-serif;
	  border-collapse: collapse;
	  width: 100%;
	}
	
	td, th {
	  border: 1px solid #dddddd;
	  text-align:center;
	  padding: 8px;
	}
	
	tr:nth-child(even) {
	  background-color: #dddddd;
	}
	
	.cmd {
	  background-color: black;
	  color: white;
	  margin: 1px;
	  padding: 80px;
	}
	
	.footer{
		height: 100px;
		line-height: 100px;
		background-color: #ff4757;
		color: white;
		text-align: center;
		margin-top: 200px;
	}
	
</style>
</head>
<body>
	<div class="jumbotron">
		<h1 class="text-center" style="">THE Development Page</h1>
	</div>
	<div class="container">
	  <div class="row">
	  	<div class="col-sm-12">
	  		<div class="col-sm-3">
	  			<a href="/main" type="button" class="btn btn-info">Main Link</a>
	  			<button type="button" class="btn btn-primary" onclick="alertsone();" data-toggle="modal" data-target="#myModal">
	  			Alert Link</button>
	  		</div>
	  		<div class="col-sm-3">
	  			<ul>
	  				<li><button class="btn btn-primary" data-toggle="modal" id="modalBtn">Alert Dialog</button></li>
					<li><button class="btn btn-primary" data-toggle="modal" id="modalBtn2">Alert Dialog no object</button></li>
					<li><button class="btn btn-primary" data-toggle="modal" id="modalBtn1">Confirm Dialog</button></li>
	  			</ul>
	  		</div>
	  		<div class="col-sm-3">
	  			<h5 id="sc">Side Bar</h5>
	  		</div>
	  		<div class="col-sm-3">
	  			<h5 id="sf">Side Bar</h5>
	  		</div>
	  	</div>
	    <div class="col-xs-12">
	    	<div class="col-xs-4">
	    		<div class="alert alert-info">
	    			<h4 style="font-size:large;text-align:center;">개발자를 위한 도구</h4>
	    			<table>
	    				<caption class="text-center">개발자 도구(툴)</caption>
	    				<caption class="text-center">Server, Code BackUp</caption>
	    				<thead>
	    					<tr>
	    						<th>순번</th>
	    						<th>개발 도구</th>
	    						<th>개발 툴 제작 기업</th>
	    					</tr>
	    					<tr>
	    						<td>1</td>
	    						<td>STS(이클립스)</td>
	    						<td>이클립스</td>
	    					</tr>
	    					<tr>
	    						<td>2</td>
	    						<td>파이썬</td>
	    						<td>파이썬</td>
	    					</tr>
	    					<tr>
	    						<td>3</td>
	    						<td>오라클</td>
	    						<td>오라클</td>
	    					</tr>
	    					<tr>
	    						<td>4</td>
	    						<td>MySQL</td>
	    						<td>MYSQL</td>
	    					</tr>
	    					<tr>
	    						<td>5</td>
	    						<td>Maven</td>
	    						<td>Maven</td>
	    					</tr>
	    					<tr>
	    						<td>6</td>
	    						<td>Spring</td>
	    						<td>Spring</td>
	    					</tr>
	    					<tr>
	    						<td>7</td>
	    						<td>Orcale</td>
	    						<td>Orcale</td>
	    					</tr>
	    					<tr>
	    						<td>8</td>
	    						<td>리눅스</td>
	    						<td>리눅스</td>
	    					</tr>
	    					<tr>
	    						<td>9</td>
	    						<td>우분투</td>
	    						<td>우분투</td>
	    					</tr>
	    					<tr>
	    						<td>10</td>
	    						<td>Git</td>
	    						<td>Git</td>
	    					</tr>
	    					<tr>
	    						<td>11</td>
	    						<td>GitHub</td>
	    						<td>GitHub</td>
	    					</tr>
	    					<tr>
	    						<td>12</td>
	    						<td>Tomcat</td>
	    						<td>Tomcat</td>
	    					</tr>
	    					<tr>
	    						<td>13</td>
	    						<td>Chrome</td>
	    						<td>Google</td>
	    					</tr>
	    				</thead>
	    				
	    			</table>
	    		</div>
	    	</div>
	    	<div class="col-xs-4">
	    		<h2 style="font-size:large;text-align:center;">개발자가 해야하는 업무</h2>
	    		<h5>1.개요</h5>
	    		<p>
	    		원래는 모든 분야의 개발에 대해 사용되는 용어다. 
	    		그런데 대한민국에서는 개발자라고 하면 주로 '소프트웨어 개발자'를 떠올리곤 한다. 
	    		이것은 외국도 마찬가지라서 위키백과에서 Developer를 검색해보면 Software Developer와 Game Developer가 나온다. Developer라는 용어가 사용되는 또 다른 중요한 분야인 부동산 개발 분야는 우리나라에서는 오히려 '디벨로퍼'라는 단어가 사용되고 있다. 
	    		영미권에서는 Developer 를 줄인 Dev라는 이름으로 불리는 일도 많다.
	    		</p>
	    		<h5>2.JAVA</h5>
	    		<p>
	    		Java의 가장 큰 특징은 플랫폼에 독립적인 언어라는 점이다. 소스 코드를 기계어로 직접 컴파일하여 링크하는 C/C++의 컴파일러와 달리 자바 컴파일러는 바이트코드인 클래스 파일(.class)을 생성하고, 이 파일의 바이트코드를 읽은 뒤 기계어로 바꾸어 실행하는 것은 Java Virtual Machine(JVM)이다.
				예를 들어 C 계열 언어들은 윈도우에서 빌드한 프로그램을 그대로 리눅스나 macOS에서 실행하려 하면 일반적으로 오류가 나지만 Java로 작성 된 프로그램은 플랫폼에 맞는 JVM만 설치되어 있다면 문제 없이 동작한다. 이는 Java 코드 자체가 플랫폼이 아닌 가상머신에 종속적이라는 점, 그리고 프로그램 실행의 주체가 운영체제가 아닌 JVM이기 때문이며 이러한 점을 통틀어 플랫폼 종속성이 낮은 언어라고 표현한다.
				JVM 기반의 프로젝트에서는 하나의 언어만을 고집하지 않는다. 스크립트 언어가 유리(간결하고 짧은 소스코드)한 부분은 Groovy로 작업하고, 함수형 언어가 유리(최근 유행하는 빅데이터 등)한 부분은 Scala로 작업하며, 견고한 인터페이스와 대규모 통합이 필요한 곳은 Java로 작업한 뒤 이들을 서로 합쳐서 운영하는 게 가능하다. (Java에서 만든 객체를 Scala에서 그대로 사용할 수 있다.)
				실제 현업에서는 Java와 통합해서 몇몇 인기 언어가 자주 사용되므로 장단점을 잘 알아두는게 좋다. '내가 사용하는 언어를 까는 건 참을 수 없어!'라는 태도보다는 환경이나 주어진 작업의 특성에 따라 적합한 언어를 선택할 수 있는 지혜가 필요하다.
	    		</p>
	    	</div>
	    	<div class="col-xs-4">
	    		<p>Maven Company website:</p>
				<blockquote cite="http://localhost:8080/main">
				본 기업에서는 많은 웹사이트를 개발하고 있습니다. 개발할때는 푸른색 Alert창에
				있는 Table(고정) 목록에 있는 개발 툴(부트스트랩 포함)을 가지고 하고 직원 간에
				협업으로 개발하며 서로 공유시에는 Git과 GitHub로 공유하며 비공개를 원칙으로 
				private로 하고 public으로 하게되면 소스공개가 되기때문에 비공개 협업자들 간
				공개를 원칙으로 하고 있습니다. 개발자는 상당히많은 급여를 받고 있는 직업으로
				프로젝트가 시작되면 개발자 툴과 언어를 사용하여 코드(소스)작성 및 코드 분석을
				합니다.
				</blockquote>
				<div class="cmd">
					<h2>Cmd DOS</h2>
					<p>Cmd DOS에서는 명령어를 사용합니다.</p>
				</div> 
	    	</div>
	    </div>
	  </div>
	</div>
	<div class="footer">
		<p class="text-center" style="">THE Development Page</p>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		function alertsone(){
			for(var k = 1; k < 10; k++){
				Message: {
					title: '알립니다. 여기는 개발자를 위한 공간입니다.'
					ok: '확인'
				}
			dialog.modal('show');
			}
		}
			var Common = {};
			Common.Dialog = {
			    /**
			    * Dialog Id
			    */
			    DialogInfo: {
			        titleId: 'common-modal-title',
			        okBtnId: 'common-modal-ok-btn',
			    },
			    
			    /**
			    * Default Item Message
			    */
			    Message: {
			        title: '알림',
			        ok: '확인',
			        cancel: '취소'
			    },
			    
			    /**
			    * Element 생성
			    *
			    * @param elementTag Element Tag
			    * @param attributeData Set Attribute Object
			    * @param appendElement AppendChild Element Object
			    * @return Element Object    
			    */
			    createElement: function(elementTag, attributeData, appendElement){
			        // Element 생성
			        var elementObj = document.createElement(elementTag);
			        // Attrbute 추가
			        for(var key in attributeData){
			            //console.log(key, attrbutes[key]);
			            elementObj.setAttribute(key, attributeData[key]);
			        };
			        // Element Append        
			        if(appendElement){
			            appendElement.appendChild(elementObj);
			        }
			        
			        return elementObj;
			    },
			    
			    /**
			    * Modal Dialog Make
			    */
			    makeModalDialog: function(data){
			        // UUID 생성
			        var uuid;
			        if(typeof(Util) === 'object' && typeof(Util.uuid) === 'function'){
			            uuid = Util.uuid();
			        }else{
			            uuid = 'xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
			                var r = Math.random()*16|0, v = c == 'x' ? r : (r&0x3|0x8);
			                return v.toString(16);
			            });
			        }
			        
			        // Dialog Id
			        data.dialogId = 'common-modal-dialog-' + data.dialogType + '-' + uuid;
			        
			        /***************************************************************************/
			        // ---------------- Modal Main Div ----------------
			        var modalDiv = this.createElement('div'
			            , {'id': data.dialogId,'class': 'modal fase','tabindex': '-1','role': 'dialog','aria-labelledby': this.DialogInfo.titleId,'aria-hidden': 'true'}
			            , document.body);
			        var modalDialogDiv = this.createElement('div', {'class': 'modal-dialog'}, modalDiv);
			        var modalContentDiv = this.createElement('div', {'class': 'modal-content'}, modalDialogDiv);
			        
			        // ---------------- Modal Header ----------------
			        var modalHeaderDiv = this.createElement('div', {'class': 'modal-header'}, modalContentDiv);
			        
			        // Close Header
			        if(data.closeBtn){
			            var modalHeaderCloseBtn = this.createElement('button', {'type': 'button', 'class': 'close', 'data-dismiss': 'modal', 'aria-hidden': 'true'}, modalHeaderDiv);
			            modalHeaderCloseBtn.innerHTML ='x';
			        }
			        
			        // title
			        var modalHeaderTitle = this.createElement('h4', {'class': 'modal-title', 'id': this.DialogInfo.titleId}, modalHeaderDiv);
			        modalHeaderTitle.innerHTML = data.title ? data.title : this.Message.title;
			        
			        // ---------------- Modal Body ----------------
			        var modalBodyDiv = this.createElement('div', {'class': 'modal-body', 'style': 'word-break: break-all'}, modalContentDiv);;
			        modalBodyDiv.innerHTML = data.content ? data.content : '';
			        
			        // ---------------- Modal Footer ----------------
			        var modalFooterDiv = this.createElement('div', {'class': 'modal-footer'}, modalContentDiv);
			        // Cancle Button
			        if(data.dialogType == 'confirm'){
			            var modalFooterCancleBtn = this.createElement('button', {'type': 'button', 'class': 'btn btn-default', 'data-dismiss': 'modal'}, modalFooterDiv);
			            modalFooterCancleBtn.innerHTML = this.Message.cancel;            
			        }
			        // Ok Button
			        var modalFooterOkAttr = {'type': 'button', 'class': 'btn btn-primary', 'id': this.DialogInfo.okBtnId};
			        if(data.dialogType == 'alert'){
			            modalFooterOkAttr['data-dismiss'] = 'modal';
			        }
			        var modalFooterOkBtn = this.createElement('button', modalFooterOkAttr, modalFooterDiv);
			        modalFooterOkBtn.innerHTML = this.Message.ok;
			        /***************************************************************************/
			        // Modal Default option Setting        
			        var modalOption = {
			            keyboard: false // ESC 키 눌렀을때 모달을 닫음
			            ,backdrop: 'static' // 모달의 배경을 포함. 클릭 시 모달을 닫지 않을 시 'static'
			            ,show: false // 초기화 시 모달을 보여줍니다.
			        }
			        // 사용자 지정 정보 설정
			        $.extend(modalOption, data);
			        
			        // Jquery Dialog 변수 선언
			        var dialog = $('#' + data.dialogId);
			        
			        // Bootstrap Modal Setting
			        dialog.modal(modalOption)        
			        
			        // Modal의 hide가 완료된 이후 Event 실행
			        dialog.on('hidden.bs.modal', function(e){
			            // Modal Element 제거
			            dialog.remove();
			        });
			        
			        // Confirm 일 경우 확인 버튼 클릭 이벤트 지정
			        if(data.dialogType == 'confirm'){
			            dialog.find(" #" + this.DialogInfo.okBtnId).on('click', function(){
			                // ok button event function 실행
			                if(data.ok && typeof(data.ok) === 'function'){
			                    data.ok();
			                }else{
			                    console.warn('not function ok event. dialogId: ' + data.dialogId);
			                }
			                
			                // Modal 창 닫기
			                dialog.modal('hide');
			                // click enevt 제거
			                $(this).off('click');
			            });    
			        }
			        
			        // Modal Dialog Show
			        dialog.modal('show');
			    },        
			    
			    /**
			    * Modal Dialog Show
			    */
			    show: function(type, data){
			        if(!data){data = {};}
			        data.dialogType = type ? type : 'alert';
			        this.makeModalDialog(data);
			    },
			    
			    /**
			    * Alert Modal Dialog
			    *
			    * data: 
			    *  title: Dialog Title Message
			    *  content: Dialog Content Message
			    *  closeBtn: Header Close Btn(x)
			    *  
			    */    
			    alert: function(data){
			        // data가 Object 가 아닌 경우 content 로 설정한다.
			        if(typeof(data) != 'object'){
			            var content = data;
			            data = {content: content};
			        }
			        this.show('alert', data);
			    },
			    
			    /**
			    * Confirm Modal Dialog
			    *
			    * data: 
			    *  title: Dialog Title Message
			    *  content: Dialog Content Message
			    *  ok: Ok Button Click Event function
			    *  closeBtn: Header Close Btn(x)
			    *  
			    */
			    confirm: function(data){
			        this.show('confirm', data);
			    }
			};
			    $(function () { 
			            $("#modalBtn").on('click', function(){
			                Common.Dialog.alert({
			                    title: '경고'
			                    ,content: 'Object Setting Alert.',
			                });    
			            });    
			            
			            $("#modalBtn2").on('click', function(){
			                Common.Dialog.alert('Not Object Setting Alert.');                    
			            });    
			            
			            $("#modalBtn1").on('click', function(){
			                Common.Dialog.confirm({
			                    content: '이것을 하시겠습니까?'
			                    ,ok: function(){
			                        console.log('확인 클릭');
			                    }
			                });    
			            });
			    });
	</script>
</body>
</html>