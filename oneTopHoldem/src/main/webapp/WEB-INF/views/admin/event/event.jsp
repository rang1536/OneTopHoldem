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
	
	<script>
	$(document).ready(function(){
		var startNum = '${startNum}';
		
   		var table = 
        $('#eventList').DataTable( {
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
	   
	      "url":"eventList",
	      "type":"POST",
	      "dataSrc": function(json){
	    	   var list = json.list;
	    	   
	    	   for(var i=0; i<list.length; i++){
	    		    list[i].goldText = "<span class='numberInput'>"+list[i].gold+"</span>"
					// 데이터 수정버튼 추가
	   	      		list[i].btnGroup ="<div align='center'>"
	   	      		list[i].btnGroup += "<button type='button' class='btn btn-success'>수정</button>"
	   	      		list[i].btnGroup += "&nbsp;&nbsp;&nbsp;<button type='button' class='btn btn-warning'>정지</button>";
	   	      		list[i].btnGroup += "&nbsp;&nbsp;&nbsp;<button type='button' class='btn btn-danger'>삭제</button>"
	   	      		list[i].btnGroup += "<input type='hidden' id='tournamentId' value='"+list[i].tournamentId+"'/>";
		   	      	list[i].btnGroup += "<input type='hidden' id='groupId' value='"+list[i].groupId+"'/>";
	   	      		list[i].btnGroup += "</div>";		   	    			   	    	
	   	      		
   	           		list[i].startTime = list[i].startDate.substring(11,list[i].startDate.length);
	   	      		list[i].startDate = list[i].startDate.substring(0,10);
	    	   }
	    	   /* console.log("list : "+list) */
	    	   return list;
	      	}
		  },            
		  columns : [
			  {data: "startDate"},
			  {data: "startTime"},
			  {data: "moneyType"},
			  {data: "needTicket"},
			  {data: "needGold"},
			  {data: "needCommission"},
			  {data: "receiveMoney"},
			  {data: "maxRebuyCount"},
			  {data: "rebuyNeedGold"},
			  {data: "rebuyNeedCommission"},
			  {data: "rebuyReceiveMoney"},
			  {data: "maxAddOnCount"},
			  {data: "addOnNeedGold"},
			  {data: "addOnNeedCommission"},
			  {data: "addOnReceiveMoney"},
			  {data: "buyInType"},
			  {data: "minUserCount"},
			  {data: "maxUserCount"},
			  {data: "guarantee"},
			  {data: "maxBettingMoney"}, //
			  {data: "blindUpTime"},
			  {data: "breakTimeLevel"},
			  {data: "breakTime"},
			  {data: "title"},
			  {data: "anteBaseValue"},
			  {data: "anteUpValue9"},
			  {data: "anteUpValue19"},
			  {data: "anteUpValue29"},
			  {data: "anteUpValue39"},
			  {data: "anteUpValue49"},
			  {data: "anteUpValueOther"},
			  {data: "smallBlindBaseValue"},
			  {data: "smallBlindUpValue9"},
			  {data: "smallBlindUpValue19"},
			  {data: "smallBlindUpValue29"},
			  {data: "smallBlindUpValue39"},
			  {data: "smallBlindUpValue49"},
			  {data: "smallBlindUpValueOther"},
			  {data: "tournamentState"},
			  {data: "groupId"}
		  ],
	         initComplete : function() {
	  
	        	 $('#payList_filter').prepend( $('#buttonWrap')) ;
	        	 
	         } 
	   });
   		
   		fn_setscene();
   		
	});
	
	function fn_setscene(){
		
	}
	
	//엑셀파일 업로드
	/* $(function(){          
		$('#btn-upload').click(function(e){
			e.preventDefault();             
			$("input:file").click();               
			var ext = $("input:file").val().split(".").pop().toLowerCase();
			if(ext.length > 0){
				if($.inArray(ext, ["gif","png","jpg","jpeg"]) == -1) { 
					alert("gif,png,jpg 파일만 업로드 할수 있습니다.");
					return false;  
				}                  
			} 
			$("input:file").val().toLowerCase();
		});                         
	});       */   
	
	$(document).on('click','#btn-upload',function(){
		var formData = new FormData($("#event")[0]);
		
        $.ajax({
            type : 'post',
            url : 'eventWrite',
            data : formData,
            processData : false,
            contentType : false,
            success : function(data) {
            	if(data.uploadResult == 'succ') alert("토너먼트를 등록 하였습니다."); 
            	window.location.reload(true);
            },
            error : function(error) {
                alert("토너먼트 등록에 실패하였습니다.");
                console.log(error);
                console.log(error.status);
            }
        });
	})
	</script>
</head>
<body>
<div id="page-wrapper">
	<br/>
	
	<div class="row" style="margin-right:10px;">
		<div>
			<form name="event" id="event" enctype="multipart/form-data" method="post" action="<c:url value="eventWrite"/>" >
				<input type="file" name="excelFile" id="excelFile" /><br/>
				<button type="button" class="btn btn-success" id="btn-upload">토너먼트 업로드</button>
			</form>
		</div>
	</div>
	<br/>
	<div class="row">
		<div class="col-lg-12">
            <a href="#"><i class="fa fa-home fa-fw"></i></a>  > 토너먼트 목록
        </div>
	</div>
	
	<div class="row">
		<div id="content" >
			<table id="eventList" style="width:100%;overflow:auto;scollbar:true">
				<colgroup>
					<col width="*">
					<col width="*">
					<col width="*">
					<col width="*">               
					<col width="*">
					
					<col width="*">
					<col width="*">
					<col width="*">
					<col width="*">
					<col width="*">
					
					<col width="*">
					<col width="*">
					<col width="*">
					<col width="*">
					<col width="*">
					
					<col width="*">
					<col width="*">
					<col width="*">
					<col width="*">               
					<col width="*">
					
					<col width="*">
					<col width="*">
					<col width="*">
					<col width="*">
					<col width="*">
					
					<col width="*">
					<col width="*">
					<col width="*">
					<col width="*">
					<col width="*">
					
					<col width="*">
					<col width="*">
					<col width="*">
					<col width="*">               
					<col width="*">
					
					<col width="*">
					<col width="*">
					<col width="*">
					<col width="*">
					<col width="*">
					
					<col width="*">
					<col width="*">
					<col width="*">
					<col width="*">
					<col width="*">
				</colgroup>
				<thead>
					<tr>
						<th rowspan="2">날짜</th>
						<th rowspan="2">시간</th>
						<th rowspan="2">머니타입</th>						
						<th colspan="4">필요머니</th>
						
						<th colspan="4">리바이</th>
						<th colspan="4">애드온</th>
						<th rowspan="2">바이인타입</th>
						<th colspan="2">참가인원</th>
						<th rowspan="2">게런티</th>
						
						<th rowspan="2">최대배팅금액</th>
						<th rowspan="2">블라인드업타임</th>
						<th rowspan="2">브레이크타임레벨</th>
						<th rowspan="2">브레이크타임</th>
						<th rowspan="2">제목</th>
						<th colspan="7">ante</th>
						
						<th colspan="7">smallBlind</th>
						<th rowspan="2">상태</th>
						<th rowspan="2">GroupId</th>
					</tr>
					<tr>
						<th>티켓</th>
						<th>골드</th>
						<th>커미션</th>
						<th>참가비</th>
						
						<th>최대횟수</th>
						<th>골드</th>
						<th>커미션</th>
						<th>참가비</th>
						
						<th>최대횟수</th>
						<th>골드</th>
						<th>커미션</th>
						<th>참가비</th>
						
						<th>최소</th>
						<th>최대</th>
						
						<th>Base</th>					
						<th>Up9</th>
						<th>Up19</th>
						<th>Up29</th>
						<th>Up39</th>						
						<th>Up49</th>
						<th>UpOther</th>
						
						<th>Base</th>					
						<th>Up9</th>
						<th>Up19</th>
						<th>Up29</th>
						<th>Up39</th>						
						<th>Up49</th>
						<th>UpOther</th>
					</tr>
				</thead>
				<tbody>
				    
				</tbody>
			</table>
		</div>
	</div>
</div>

<c:import url="../popup/add_branch.jsp"></c:import>
<c:import url="../popup/mms_list.jsp"></c:import>
<c:import url="../popup/modify_myInfo.jsp"></c:import>
</body>
</html>