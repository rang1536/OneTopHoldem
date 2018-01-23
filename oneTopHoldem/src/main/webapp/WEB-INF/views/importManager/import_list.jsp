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
		$('.topMenu:eq(5)').css('background','#FFC19E');
		
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
	   
	      "url":"importList",
	      "type":"POST",
	      "dataSrc": function(json){
	    	   var list = json.list;
	    	   
	    	  /*  for(var i=0; i<list.length; i++){
	    		    // 데이터 수정버튼 추가
	   	      		list[i].btnGroup ="<div align='center'>"
	   	      		list[i].btnGroup += "&nbsp;<button type='button' class='btn btn-info' onclick='changePass("+list[i].accountId+")'>비번변경</button>";
	   	      		list[i].btnGroup += "&nbsp;<button type='button' class='btn btn-info' onclick='addGoldFn("+list[i].accountId+")'>골드증여</button>";
	   	     		list[i].btnGroup += "&nbsp;<button type='button' class='btn btn-info' onclick='modifyAccount("+list[i].accountId+")'>티켓증여</button>";
	   	      		list[i].btnGroup += "&nbsp;&nbsp;&nbsp;<button type='button' class='btn btn-warning' onclick='changeStatus("+list[i].accountId+");'>정지</button>" 			   	    			   	    	
   	           }
	    	   console.log("list : "+list) */
	    	   return list;
	      	}
		  },            
		  columns : [
			  {data: "day"},
			  {accountId:"accountId"},
		      {data: "gold"},
		      {data: "cash"}	     
		  ],
	         initComplete : function() {
	  
	        	 $('#payList_filter').prepend( $('#buttonWrap')) ;
	        	 
	         } 
	   });
   		
	});
	
	</script>
</head>
<body>
<div id="page-wrapper">
	<br/>
	<div class="row">
		<div class="col-lg-12">
            <a href="#"><i class="fa fa-home fa-fw"></i></a>  >  수익관리
        </div>
	</div>
	<br/>
	<div class="row">
		<div style="text-align:left;margin-right:10px;font-size:16px;">
			<span style="margin:15px;">2018년</span>
			<select id="month" name="month">
				<option value="01">01월</option>
				<option value="02">02월</option>
				<option value="03">03월</option>
				<option value="04">04월</option>
				<option value="05">05월</option>
				<option value="06">06월</option>
				<option value="07">07월</option>
				<option value="08">08월</option>
				<option value="09">09월</option>
				<option value="10">10월</option>
				<option value="11">11월</option>
				<option value="12">12월</option>
			</select>
			<script>
				var date = new Date();
				var month = date.getMonth()+1;
				if(month < 10) month = "0"+month.toString();
				console.log(month);
				$('#month').val(month).attr('selected','selected');
			</script>
		</div>
	</div>
	
	<div class="row">
		<div id="content">
			<table id="payList">
				<colgroup>
					<col width="*">
					<col width="*">
					<col width="*">
					<col width="*">
				</colgroup>
				<thead>
					<tr>
						<th>날짜</th>
						<th>코드</th>
						<th>획득골드</th>
						<th>획득현금액</th>											
					</tr>
				</thead>
				<tbody>
				    
				</tbody>
			</table>
		</div>
	</div>
</div>
</body>
</html>