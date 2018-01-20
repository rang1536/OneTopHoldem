<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="./module/side.jsp"></c:import>
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
	
	<script>
	$(document).ready(function(){
		$('.topMenu:eq(0)').css('background','#FFC19E');
		var inputCheck = '${inputCheck}'; //지점등록시 체크하는 변수
		var updateCheck = '${updateCheck}'; //지점수정시 체크하는 변수
		
		// 지점등록, 수정등 성공여부 알림창
		if(inputCheck == 'success') alert('지점등록에 성공하였습니다!!');
		else if(inputCheck == 'fail') alert('지점등록에 실패하였습니다!!');
		
		if(updateCheck == 'success') alert('지점수정에 성공하였습니다!!');
		else if(updateCheck == 'fail') alert('지점수정에 실패하였습니다!!');
		
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
	   
	      "url":"userList",
	      "type":"POST",
	      "dataSrc": function(json){
	    	   var list = json.list;
	    	   
				for(var i=0; i<list.length; i++){
					// 정지된 지점 표시
					if(list[i].accountStatus == 1) list[i].loginId += '(정지됨)'; 
					
					list[i].goldText = "<span class='numberInput'>"+list[i].gold+"</span>"
					// 데이터 수정버튼 추가
					list[i].btnGroup ="<div align='center'>"
					list[i].btnGroup += "<button type='button' class='btn btn-success' onclick='modifyAccount("+list[i].accountId+")'>수정</button>"
					
					if(list[i].accountStatus == 1) list[i].btnGroup += "&nbsp;&nbsp;&nbsp;<button type='button' class='btn btn-warning' onclick='changeStatusNone("+list[i].accountId+");'>정지풀기</button>"
					else if(list[i].accountStatus == 0) list[i].btnGroup += "&nbsp;&nbsp;&nbsp;<button type='button' class='btn btn-warning' onclick='changeStatus("+list[i].accountId+");'>정지</button>"
					
					list[i].btnGroup += "&nbsp;&nbsp;&nbsp;<button type='button' class='btn btn-danger' onclick='deleteAccount("+list[i].accountId+");'>삭제</button></div>";		   	    			   	    	
				}
				return list;
	      	}
		  },            
		  columns : [
		      {data: "loginId"},
		      {data: "commission"},
		      {data: "createdDate"},
		      {data: "goldCount"},
		      {data: "btnGroup"}	     
		  ],
	         initComplete : function() {
	  
	        	 $('#payList_filter').prepend( $('#buttonWrap')) ;
	        	 
	         } 
	   });
   		
	});
	
	//유효성검사 하는 함수 정의 - 널체크, 숫자만 입력.
	function nullCheck(str){ //널체크
		if(str == null || str == ''){
			alert('필수항목을 모두 입력해주세요!!');
			return false;
		}
		return true; 
	}
	
	function isNum(str, tag){ //키업이벤트 숫자만 입력하는지 체크
		var key = event.keyCode;
		if(!(key==8 || key==9 || key==13 || key==46 || key==144 || (key>=48&&key<=57) || key==110 || key==190)){
			alert('숫자만 입력가능합니다!!');
			str = str.substring(0,str.length-1);
			$('#addBranch').find('#'+tag).val(str);
			event.returnValue = false;
		}
	}
	
	function isNumModify(str, tag){ //키업이벤트 숫자만 입력하는지 체크
		var key = event.keyCode;
		if(!(key==8 || key==9 || key==13 || key==46 || key==144 || (key>=48&&key<=57) || key==110 || key==190)){
			alert('숫자만 입력가능합니다!!');
			str = str.substring(0,str.length-1);
			$('#modifyAccount').find('#'+tag).val(str);
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
					}
				}
			})
		}
	}
	//지점등록 팝업창 열기
	function addBranchPop(){
		$('#addBranch').modal();
	}
	
	//지점등록하기 - 유효성검사 & 폼값 서브밋
	function addBranch(){
		var loginId = $('#addBranchForm').find('#loginId').val();
		var loginPassword = $('#addBranchForm').find('#loginPassword').val();
		var reLoginPassword = $('#addBranchForm').find('#reLoginPassword').val();
		var commission = $('#addBranchForm').find('#commission').val();
		var recommendAccountId = $('#addBranchForm').find('#recommendAccountId').val();
		var telephone = $('#addBranchForm').find('#telephone').val();
		var hp2 = $('#addBranchForm').find('#hp2').val();
		var accountText = $('#addBranchForm').find('#accountText').val();
		
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
		}else if(commission ==null || commission == ''){
			alert('커미션을 입력해주세요!!');
			return ;
		}else if(recommendAccountId ==null || recommendAccountId == ''){
			alert('추천인을 입력해주세요!!');
			return ;
		}else if(telephone ==null || telephone == ''){
			alert('연락처를 입력해주세요!!');
			return ;
		}
		
		//비번, 재입력간 일치여부 확인
		if(loginPassword != reLoginPassword){
			alert('비밀번호가 다릅니다 다시 입력하세요');
			$('#addBranchForm').find('#reLoginPassword').val('');
			$('#addBranchForm').find('#reLoginPassword').focus();
			return;
		}
		
		$('#addBranchForm').attr('action','addBranch').submit();
	}
	//지점수정 팝업창 텍스트박스 값세팅 및 팝업창 열기
	function modifyAccount(accountId){
		/* alert(accountId); */
		$.ajax({
			url : 'readAccount',
			data : {'accountId':accountId},
			dataType:'json',
			type:'post',
			success:function(data){
				$('#modifyAccount').find('#accountId').val(data.accountId);
				$('#modifyAccount').find('#loginId').val(data.loginId);
				$('#modifyAccount').find('#todayTd').text(data.createdDate);
				$('#modifyAccount').find('#commission').val(data.commission);
				$('#modifyAccount').find('#recommendAccountId').val(data.recommendAccountId);
				$('#modifyAccount').find('#telephone').val(data.telephone);
				$('#modifyAccount').find('#accountText').val(data.accountText);
				
				$('#modifyAccount').modal();
			}
		})
	}
	
	//지점수정
	function modifyBranch(){
		var loginPassword = $('#modifyAccountForm').find('#loginPassword').val();
		var reLoginPassword = $('#modifyAccountForm').find('#reLoginPassword').val();
		
		if(loginPassword != null && loginPassword != ''){ //비밀번호를 입력했다면 재입력 비번과 확인하여 다르면 같게 입력하게함.
			if(loginPassword != reLoginPassword){
				alert('비밀번호가 다릅니다 다시 입력하세요');
				$('#modifyAccountForm').find('#reLoginPassword').val('');
				$('#modifyAccountForm').find('#reLoginPassword').focus();
				return;
			}
		}
		
		$('#modifyAccountForm').attr('action','modifyAccount').submit();
	}
	
	//지점 상태변경( >>정지)
	function changeStatus(accountId){
		if(confirm('해당지점을 정지로 바꾸겠습니다?')){
			//accountStatus > 1로 수정
			$.ajax({
				url : 'modifyAccountStatus',
				data:{'accountId':accountId},
				dataType:'json',
				type:'post',
				success:function(data){
					if(data.updateCheck == 'success'){
						alert('지점상태를 정지로 수정하였습니다!!');
						window.location.reload(true);
					}
				}
			})
		}
	}
	
	//지점 상태변경( >>정지풀기)
	function changeStatusNone(accountId){
		if(confirm('해당지점의 정지를 푸시겠습니다?')){
			//accountStatus > 1로 수정
			$.ajax({
				url : 'modifyAccountStatusNone',
				data:{'accountId':accountId},
				dataType:'json',
				type:'post',
				success:function(data){
					if(data.updateCheck == 'success'){
						alert('정지를 풀었습니다!!');
						window.location.reload(true);
					}
				}
			})
		}
	}
	
	//지점 삭제
	function deleteAccount(accountId){
		if(confirm('해당지점을 삭제하시겠습니까?')){
			//계정 삭제
			$.ajax({
				url : 'removeAccount',
				data:{'accountId':accountId},
				dataType:'json',
				type:'post',
				success:function(data){
					if(data.deleteCheck == 'success'){
						alert('선택한 지점을 삭제하였습니다!!');
						window.location.reload(true);
					}
				}
			})
		}
	}	
	
	//단체문자
	function sendMms(){
		$('#mms').modal();
	}
	
	</script>
</head>
<body>
<div id="page-wrapper">
	<br/>
	<div class="row">
		<div class="col-lg-12">
            <a href="#"><i class="fa fa-home fa-fw"></i></a>  >  지점관리
        </div>
	</div>
	<br/>
	<div class="row">
		<div style="text-align:left;margin-right:10px;">
			<button type="button" class="btn btn-success" onclick="sendMms();">일괄메세지</button>
			<button type="button" class="btn btn-primary" onclick="addBranchPop();">지점등록</button>
		</div>
	</div>
	
	<div class="row">
		<div id="content">
			<table id="payList">
				<colgroup>
					<col width="150px">
					<col width="100px">
					<col width="150px">
					<col width="150px">               
					<col width="300px">
				</colgroup>
				<thead>
					<tr>
						<th>ID</th>
						<th>커미션</th>
						<th>가입일</th>
						<th>보유머니</th>
						<th>-</th>						
					</tr>
				</thead>
				<tbody>
				    
				</tbody>
			</table>
		</div>
	</div>
</div>

<c:import url="./popup/add_branch.jsp"></c:import>
<c:import url="./popup/modify_account.jsp"></c:import>
<c:import url="./popup/mms.jsp"></c:import>
</body>
</html>