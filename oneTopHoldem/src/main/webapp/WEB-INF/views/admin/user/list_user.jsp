<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../module/side.jsp"></c:import>
<!DOCTYPE html>
<html>
<head>
	
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.15/css/dataTables.bootstrap.css"/>
	
	<!-- <script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.js"></script> -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.js"></script>
	
	<script type="text/javascript" src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/buttons/1.3.1/js/dataTables.buttons.min.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/buttons/1.3.1/js/buttons.bootstrap.min.js"></script>
	
	<script type="text/javascript" src="https://cdn.datatables.net/1.10.15/js/dataTables.bootstrap.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/buttons/1.3.1/js/buttons.html5.min.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/buttons/1.3.1/js/buttons.print.min.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/buttons/1.3.1/js/buttons.colVis.min.js"></script>
	<script type="text/javascript" src="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.27/build/vfs_fonts.js"></script>
	<script type="text/javascript" src="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.27/build/pdfmake.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
	               
	<link rel="StyleSheet" href="<c:url value='resources/css/datatable.css'/>" type="text/css">
	<link rel="StyleSheet" href="<c:url value='resources/css/datatableUse.css'/>" type="text/css"> 
	<style>
		#loader{width: 100%;
			height: 100%;
			top: 0;
			left: 0;
			position: fixed;
			display: block;
			opacity: 0.8;
			background: white;
			z-index: 99;
			text-align: center;
		}
		#loader img{
			position: absolute;
			top: 50%;
			left: 50%;
			z-index: 100;
		}
	</style>
	<script>
	$(document).ready(function(){
		$('.topMenu:eq(1)').css('background','#FFC19E');
		
		var loginId = '${loginId}';
		var grade = '${adminGrade}';
		
		if(loginId == 'none'){
			loginId = '${id}';
		}
		
		if(grade == 4){
			grade = '${grade}';
		}
		console.log('loginId : '+loginId);
		$('#loader').css('display','');
		
   		var table = 
        $('#payList').DataTable( {
          dom: 'Bfrtip',
          lengthChange: false,
          autoWidth : false,
          processing: false,
          ordering: true,
          serverSide: false,
          searching: true,
          //lengthMenu : [ [ 3, 5, 10, -1 ], [ 3, 5, 10, "All" ] ],
          pageLength: 50,
          bPaginate: true,
          bLengthChange: false,
          bAutoWidth: false,
          bStateSave: true,
          buttons: [], 
          oLanguage : {
             sProcessing : "처리중...",
             sZeroRecords : "데이터가 없습니다(전체보기시 10초정도 소요될 수 있습니다)",
             oPaginate : {
                   sFirst : "처음",
                   sNext : ">",
                   sPrevious : "<",
                   sLast : "끝"
 
             },
             sInfo : "총_TOTAL_건 중, _START_건부터_END_건까지 표시",
             sInfoEmpty : "0 건 중, 0부터 0 까지 표시", 
             sInfoFiltered : "(총 _MAX_ 건에서 추출 )",
             sSearch : "상세 검색 : "                
       },
	    ajax : {
	   
	      "url":"userList?loginId="+loginId+"&grade="+grade,
	      "type":"POST",
	      "dataSrc": function(json){
	    	   var list = json.list;
	    	   
	    	   for(var i=0; i<list.length; i++){
	    			// 정지된 지점 표시
					if(list[i].accountStatus == 1) list[i].loginId += '(정지됨)'; 
	    			
	    		    // 데이터 수정버튼 추가
	   	      		list[i].btnGroup ="<div id='btnGroup' align='center'>"
	   	      		list[i].btnGroup += "&nbsp;<button type='button' class='btn btn-info' id='changePassBtn'>비번변경</button>";
	   	      		list[i].btnGroup += "&nbsp;<button type='button' class='btn btn-info' id='addGoldFn'>골드증여</button>";
	   	     		list[i].btnGroup += "&nbsp;<button type='button' class='btn btn-info' id='addTicketBtn'>티켓증여</button>";
	   	     		list[i].btnGroup += '<input type="hidden" id="accountId" value="'+list[i].accountId+'"/>';
	   	     	
		   	     	if(list[i].accountState == 1) list[i].btnGroup += "&nbsp;&nbsp;&nbsp;<button type='button' class='btn btn-warning' id='changeStatusNone'>정지풀기</button>"
					else if(list[i].accountState == 0) list[i].btnGroup += "&nbsp;&nbsp;&nbsp;<button type='button' class='btn btn-warning' id='changeStatus'>정지</button>"
	   	      		
   	           }
	    	   
	    	   return list;
	      	}
		  },            
		  columns : [
			  {data: "gradeName"},
		      {data: "loginId"},
		      {data: "btnGroup"}	     
		  ],
	         initComplete : function() {  
	        	 $('#payList_filter').prepend( $('#buttonWrap')) ;	
	        	 $('#loader').css('display','none');
	         } 
	   });
   		
	});
	
	//onclick='changePass("+list[i].accountId+")'
	
	
	function isNum(str, tag){ //키업이벤트 숫자만 입력하는지 체크
		var key = event.keyCode;
		if(!(key==8 || key==9 || key==13 || key==46 || key==144 || (key>=48&&key<=57) || key==110 || key==190)){
			alert('숫자만 입력가능합니다!!');
			str = str.substring(0,str.length-1);
			$('#addBranch').find('#'+tag).val(str);
			event.returnValue = false;
		}
	}
	
	// id 중복체크(지점등록)
	function overlapCheck(loginId){
		if(loginId != null && loginId != ''){
			$.ajax({
				url : 'overlap',
				data: {'loginId':loginId},
				dataType: 'json',
				type : 'post',
				success : function(data){
					if(data.result == 'fail'){
						alert('같은 아이디가 존재합니다. 변경해주세요');
						$('#addBranchForm').find('#loginId').val('');
						$('#addBranchForm').find('#loginId').focus();
						return;
					}else{
						$('#addBranchForm').find('#recommendAccountId').val(loginId);
					}
				}
			})
		}
	}
	
	//지점등록 팝업창 열기
	function addUserPop(){
		$('#addUser').modal();
	}
	//지점등록하기 - 유효성검사 & 폼값 서브밋
	function addUser(){
		var loginId = $('#addUserForm').find('#loginId').val();
		var loginPassword = $('#addUserForm').find('#loginPassword').val();
		var reLoginPassword = $('#addUserForm').find('#reLoginPassword').val();
		var commission = $('#addUserForm').find('#commission').val();
		var recommendAccountId = $('#addUserForm').find('#recommenderId').val();
		var telephone = $('#addUserForm').find('#telephone').val();
		var hp2 = $('#addUserForm').find('#hp2').val();
		var accountText = $('#addUserForm').find('#accountText').val();
		
		//널체크
		if(loginId ==null || loginId == ''){
			alert('아이디를 입력해주세요!!');
			return ;
		}else if(loginPassword ==null || loginPassword == ''){
			alert('패스워드를 입력해주세요!!');
			return ;
		}else if(reLoginPassword ==null || reLoginPassword == ''){
			alert('패스워드를 다시 입력해주세요!!');
			return ;
		}else if(telephone ==null || telephone == ''){
			alert('연락처를 입력해주세요!!');
			return ;
		}
		/* else if(recommendAccountId ==null || recommendAccountId == ''){
			alert('추천인을 입력해주세요!!');
			return ;
		} */
		
		//비번, 재입력간 일치여부 확인
		if(loginPassword != reLoginPassword){
			alert('비밀번호가 다릅니다 다시 입력하세요');
			$('#addUserForm').find('#reLoginPassword').val('');
			$('#addUserForm').find('#reLoginPassword').focus();
			return;
		}
		
		$('#addUserForm').attr('action','addBranch').submit();
		$('#addUser').modal('hide');
	}
	
	//단체문자
	function sendMms(){
		$('#mms').modal();
	}
	
	//지점 상태변경( >>정지)
	$(document).on('click','#changeStatus',function(){
		var accountId = $(this).closest('#btnGroup').find('#accountId').val();
		changeStatus(accountId);
	})
	function changeStatus(accountId){
		//alert(accountId)
		if(confirm('해당지점을 정지로 바꾸겠습니다?')){
			$('#loader').css('display','');
			//accountStatus > 1로 수정
			$.ajax({
				url : 'modifyAccountStatus',
				data:{'accountId':accountId},
				dataType:'json',
				type:'post',
				success:function(data){
					$('#loader').css('display','none');
					
					if(data.updateCheck == 'success'){
						alert('지점상태를 정지로 수정하였습니다!!');
						window.location.reload(true);
					}
				}
			})
		}
	}
	
	//지점 상태변경( >>정지풀기)
	$(document).on('click','#changeStatusNone',function(){
		var accountId = $(this).closest('#btnGroup').find('#accountId').val();
		changeStatusNone(accountId);
	})
	function changeStatusNone(accountId){
		if(confirm('해당지점의 정지를 푸시겠습니다?')){
			$('#loader').css('display','');
			//accountStatus > 0로 수정
			$.ajax({
				url : 'modifyAccountStatusNone',
				data:{'accountId':accountId},
				dataType:'json',
				type:'post',
				success:function(data){
					$('#loader').css('display','none');
					if(data.updateCheck == 'success'){
						
						alert('정지를 풀었습니다!!');
						window.location.reload(true);
					}
				}
			})
		}
	}
	
	
	//비번변경 팝업창열기
	$(document).on('click','#changePassBtn',function(){
		var accountId = $(this).closest('#btnGroup').find('#accountId').val();
		
		$.ajax({
			url : 'readAccount',
			data : {'accountId':accountId},
			dataType:'json',
			type:'post',
			success:function(data){
				//alert(data.accountId);
				$('#changePassForm').find('#accountId').val(data.accountId);
				$('#changePassForm').find('#targetTd').text('['+data.loginId+'님] 비밀번호 변경');
				$('#changePass').modal();
			}
		})
	})
	
	//비번변경하기
	function changePassword(){
		var pass = $('#changePassForm').find('#loginPassword').val();
		var rePass = $('#changePassForm').find('#reLoginPassword').val();
		
		//alert('!!');
		if(pass == null || pass == ''){
			alert('비밀번호를 입력하세요');
			$('#changePass').find('#loginPassword').focus();
			return;
		}else if(rePass == null || rePass == ''){
			alert('비밀번호를 확인해주세요');
			$('#changePass').find('#reLoginPassword').focus();
			return;
		}
		
		if(pass != rePass){
			alert('비밀번호가 일치하지 않습니다!!');
			$('#changePass').find('#reLoginPassword').val('');
			$('#changePass').find('#reLoginPassword').focus();
			return;
		}
		
		var params = $('#changePassForm').serialize();
		if(confirm('비밀번호를 변경하시겠습니까?')){
			$('#loader').css('display','');
			
			$.ajax({
				url : 'changePass',
				data : params,
				dataType:'json',
				type:'post',
				success : function(data){
					$('#loader').css('display','none');
					
					if(data.changeCheck == 'success'){
						alert('비밀번호를 수정하였습니다');
						return;
					}
				}
			})
		}
		
	}
	
	//골드증여 클릭이벤트
	$(document).on('click','#addGoldFn',function(){
		var accountId = $(this).closest('#btnGroup').find('#accountId').val();
		addGoldFn(accountId);
	})
	function addGoldFn(accountId){
		$.ajax({
			url : 'readAccount',
			data : {'accountId':accountId},
			dataType:'json',
			type:'post',
			success:function(data){
				$('#addGold').find('#accountId').val(data.accountId);
				$('#addGold').find('#targetTd').text('['+data.loginId+'님] 골드증여');
				$('#addGold').modal();
			}
		})
	}
	
	//골드증여 유효성검사 및 서브밋
	function addGoldSubmit(){
		var accountId =  $('#addGold').find('#accountId').val();
		var addGold = $('#addGold').find('#addGoldText').val();
		
		if(addGold == null || addGold == ''){
			alert('보내실 골드를 입력해주세요');
			$('#addGold').find('#addGoldText').focus();
			return;
		}
		if(confirm('골드를 보내시겠습니까?')){
			$('#loader').css('display','');
			
			// submit
			$.ajax({
				url : 'addGold',
				data : {'accountId':accountId,'addGold':addGold},
				dataType:'json',
				type:'post',
				success:function(data){
					$('#loader').css('display','none');
					if(data.addGoldCheck == 'success'){
						alert('골드를 보냈습니다!!');
						return;
					}else{
						alert('골드 증여에 실패하였습니다.');
						return;
					}
				}
			})
		}
	}
	
	
	//티켓증여 팝업창 열기
	$(document).on('click','#addTicketBtn',function(){
		var accountId = $(this).closest('#btnGroup').find('#accountId').val();
		addTicket(accountId);
	})
	function addTicket(accountId){
		$.ajax({
			url : 'readAccount',
			data : {'accountId':accountId},
			dataType:'json',
			type:'post',
			success:function(data){
				$('#addTicket').find('#accountId').val(data.accountId);
				$('#addTicket').find('#targetTd').text('['+data.loginId+'님] 티켓증여');
				$('#addTicket').modal();
			}
		})
	}
	
	//티켓증여 유효성검사 및 서브밋
	function addTicketSubmit(){
		var accountId =  $('#addTicket').find('#accountId').val();
		var addTicket = $('#addTicket').find('#addTicketText').val();
		if(addTicket == null || addTicket == ''){
			alert('보내실 티켓을 입력해주세요');
			$('#addTicket').find('#addTicketText').focus();
			return;
		}
		
		if(confirm('티켓을 보내시겠습니까?')){
			
			$('#loader').css('display','');
			$.ajax({
				url : 'addTicket',
				data : {'accountId':accountId,'addTicket':addTicket},
				dataType:'json',
				type:'post',
				success:function(data){
					$('#loader').css('display','none');
					if(data.addTicketCheck == 'success'){
						alert('티켓을 보냈습니다!!');
						return;
					}else{
						alert('티켓 증여에 실패하였습니다.');
						return;
					}
				}
			})
		}
	}
	
	function isNumGold(str, tag){ //키업이벤트 숫자만 입력하는지 체크
		var key = event.keyCode;
		if(!(key==8 || key==9 || key==13 || key==46 || key==144 || (key>=48&&key<=57) || key==110 || key==190)){
			alert('숫자만 입력가능합니다!!');
			str = str.substring(0,str.length-1);
			$('#addGold').find('#'+tag).val(str);
			event.returnValue = false;
		}
	}
	
	function isNumTicket(str, tag){ //키업이벤트 숫자만 입력하는지 체크
		var key = event.keyCode;
		if(!(key==8 || key==9 || key==13 || key==46 || key==144 || (key>=48&&key<=57) || key==110 || key==190)){
			alert('숫자만 입력가능합니다!!');
			str = str.substring(0,str.length-1);
			$('#addTicket').find('#'+tag).val(str);
			event.returnValue = false;
		}
	}
	</script>
</head>
<body>
<div id="loader" style="display:none;">
	<img src="resources/img/2.gif" alt="loading">
</div>

<div id="page-wrapper">
	<br/>
	<div class="row">
		<div class="col-lg-12">
            <a href="#"><i class="fa fa-home fa-fw"></i></a>  >  회원정보관리
        </div>
	</div>
	<br/>
	<div class="row" style="text-align:left;margin-right:10px;">
		<div>
			<button type="button" class="btn btn-success" onclick="sendMms();">일괄메세지</button>
			<button type="button" class="btn btn-primary" onclick="addUserPop();">회원등록</button>
		</div>
		
	</div>
	<br/>
	<div class="row">
		<div id="content">
			<table id="payList">
				<colgroup>
					<col width="150px">
					<col width="150px">
					<col width="300px">
				</colgroup>
				<thead>
					<tr>
						<th>등급</th>
						<th>아이디</th>
						<th>-</th>						
					</tr>
				</thead>
				<tbody>
				    
				</tbody>
			</table>
		</div>
	</div>
</div>

<c:import url="../popup/add_user.jsp"></c:import> 	<!--유저등록 팝업  -->
<c:import url="../popup/mms.jsp"></c:import> 			<!--단체문자 팝업  -->
<c:import url="../popup/change_Pass.jsp"></c:import> 	<!--비번변경 팝업  -->
<c:import url="../popup/add_gold.jsp"></c:import> 		<!--골드증여 팝업  -->
<c:import url="../popup/add_ticket.jsp"></c:import>		<!--티켓증여 팝업 -->
<c:import url="../popup/mms_list.jsp"></c:import>
<c:import url="../popup/modify_myInfo.jsp"></c:import>
</body>
</html>