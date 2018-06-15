<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../module/side.jsp"></c:import>
<!DOCTYPE html>
<html>
<head>
<style>
	td,th{padding:5px;font-weight:bold;}
</style>
<script>
	$(document).ready(function(){
		$('.topMenu:eq(2)').css('background','#FFC19E');
		setInterval("server_time()", 1000);
	})
	
	function server_time(){
		var now = new Date();
	    now.setSeconds(now.getSeconds()+1);
	 
	    var year = now.getFullYear();
	    var month = now.getMonth() + 1;
	    var date = now.getDate();
	    var hours = now.getHours();
	    var minutes = now.getMinutes();
	    var seconds = now.getSeconds();
	 
	    if (month < 10) month = "0" + month;
	 	if (date < 10) date = "0" + date;
	 	if (hours < 10) hours = "0" + hours;
	 	if (minutes < 10) minutes = "0" + minutes;
	   	if (seconds < 10) seconds = "0" + seconds;
	    
	    $('#timeTd').text("현재시간 : "+year + "-" + month + "-" + date + " " + hours + ":" + minutes + ":" + seconds);
	}
	
	// 공지 전송 시작 - 음? 시간 잘못입력한것도 체크 해줘야 하나? 시간은 그냥 현재시간 나오니 몇시간 몇분동안 발송 으로 하는게 좋을듯
	function transmission(){
		var endDate = $('#endDate').val();
		var hour = $('#si').val().trim(); 
		var minute = $('#bun').val().trim();
		var msg = $('#msg').val();
		var date = new Date();
		
		//var nowDate = (date.getMonth()+1)+date.getDate();
		//var nowDateText = (date.getMonth()+1)+' 월'+date.getDate()+' 일';
		
		/* if(hour == null || hour == ''){
			alert('종료시간을 입력하세요');
			return;
		}else if(minute == null || minute == ''){
			alert('종료시간을 입력하세요');
			return;
		} */
		if(msg == null || msg == ''){
			alert('공지 내용을 입력하세요');
			return;
		}
		
		if(confirm('긴급공지 발송을 하시겠습니까?')){	
			// 공지 입력하는 ajax코드 추가
			$.ajax({
				url : 'addNotice',
				data : {'msg':msg, 'endDate':endDate, 'hour':hour, 'minute':minute},
				dataType : 'json',
				type : 'post',
				success : function(data){
					if(data.addNoticeCheck == 'success'){
						alert('입력한 시간동안 긴급공지가 1분간격으로 발송됩니다!!');
						return;
					}else{
						alert('긴급공지 등록실패!!');
						return;
					}
				}
			});
			
			// 버튼 체인지
			$('#transBtn').css('display','none');
			$('#stopBtn').css('display','');
		}		
	}
	
	function stopNotice(){
		if(confirm('긴급공지를 중지하시겠습니까?')){
			//공지 하나로 지웠다 계속 새로 입력해 쓰는 방식 또는 입력되어 있으면 계속 종료시간까지 입력된다면 삭제처리 해주기.
			$.ajax({
				url : 'removeNotice',
				dataType : 'json',
				type : 'post',
				success : function(data){
					if(data.deleteResult == 'success'){
						alert('긴급공지 발송이 종료됩니다!');
						return;
					}
				}
			}) 
			// 버튼 체인지
			$('#stopBtn').css('display','none');
			$('#transBtn').css('display','');
			
			//폼값 초기화
			$('#endDate').val('');
			$('#si').val('');
			$('#bun').val('');
			$('#msg').val('');
		}
		
	}
	//입력값 숫자입력체크
	function isNumGameInfo(str, tag){ //키업이벤트 숫자만 입력하는지 체크
		var key = event.keyCode;
		if(!(key==8 || key==9 || key==13 || key==46 || key==144 || (key>=48&&key<=57) || key==110 || key==190)){
			alert('숫자만 입력가능합니다!!');
			str = str.substring(0,str.length-1);
			$('#gameForm').find('#'+tag).val(str);
			event.returnValue = false;
		}
	}
	
	//딜러비등 게임정보 반영하기
	function modifyMasterInfo(){
		var params = $('#gameForm').serialize(); //폼값세팅.
		
		//유효성검사여부 확인 후 유효성검사 혹은 하지않음.
		
		if(confirm('게임설정을 이대로 바꾸시겠습니까?')){
			//업데이트 하는 ajax코드 추가 후 폼값 지우기
			if($('#dealerCommission').val() == null || $('#dealerCommission').val() == ''){
				alert('딜러비를 입력하세요!!');
				return;
			}else if($('#jackpotProbability').val() == null || $('#jackpotProbability').val() == ''){
				alert('잭팟확률을 입력하세요!!');
				return;
			}else if($('#straightFlushJackpot').val() == null || $('#straightFlushJackpot').val() == ''){
				alert('straightFlushJackpot을 입력하세요!!');
				return;
			}else if($('#fourOfAKindJackpot').val() == null || $('#fourOfAKindJackpot').val() == ''){
				alert('fourOfAKindJackpot을 입력하세요!!');
				return;
			}else if($('#fullHouseJackpot').val() == null || $('#fullHouseJackpot').val() == ''){
				alert('fullHouseJackpot을 입력하세요!!');
				return;
			}else if($('#flushJackpot').val() == null || $('#flushJackpot').val() == ''){
				alert('flushJackpot을 입력하세요!!');
				return;
			}else if($('#straightJackpot').val() == null || $('#straightJackpot').val() == ''){
				alert('straightJackpot을 입력하세요!!');
				return;
			}else if($('#threeOfAKindJackpot').val() == null || $('#threeOfAKindJackpot').val() == ''){
				alert('threeOfAKindJackpot을 입력하세요!!');
				return;
			}else if($('#twoPairJackpot').val() == null || $('#twoPairJackpot').val() == ''){
				alert('twoPairJackpot을 입력하세요!!');
				return;
			}else if($('#onepairJackpot').val() == null || $('#onepairJackpot').val() == ''){
				alert('onepairJackpot을 입력하세요!!');
				return;
			}else if($('#noPairJackpot').val() == null || $('#noPairJackpot').val() == ''){
				alert('noPairJackpot을 입력하세요!!');
				return;
			}
			
			$.ajax({
				url : 'modifyMasterInfo',
				data : params,
				dataType : 'json',
				type : 'post',
				success:function(data){
					if(data.masterInfoModifyCheck == 'success'){
						alert('입력하신 배당율로 수정하였습니다!!');
						$('#dealerCommission').val('');
						$('#jackpotProbability').val('');
						$('#straightFlushJackpot').val('');
						$('#fourOfAKindJackpot').val('');
						$('#fullHouseJackpot').val('');
						$('#flushJackpot').val('');
						$('#straightJackpot').val('');
						$('#threeOfAKindJackpot').val('');
						$('#twoPairJackpot').val('');
						$('#onepairJackpot').val('');
						$('#noPairJackpot').val('');
						return;
					}else{
						alert('수정에 실패하였습니다!!');
						return;
					}
				}
			})
		}
		
	}
</script>

</head>
<body>
<div id="page-wrapper">
	<br/>
	<div class="row">
		<div class="col-lg-12">
            <a href="#"><i class="fa fa-home fa-fw"></i></a>  >  게임관리
        </div>
	</div>
	
	<br/><br/>
	<div class="row">
		<form id="gameForm">
			<table class="table-hover">
				<tr>
					<td colspan="5" style="text-align:right;">
						<button type="button" class="btn btn-primary" onclick="modifyMasterInfo();">게임정보반영</button>
					</td>
				</tr>
				<tr>
					<td colspan="5" style="font-weight:bold;background-color:#FFFFE4;text-align:center;">
						확률은 해당 숫자의 10,000,000배 만큼 입력해주세요 (예 0.5% = 5,000,000)
					</td>
				</tr>
				<tr>
					<td>딜러비</td>
					<td><input type="text" class="form-control" onkeyup="isNumGameInfo(this.value,'dealerCommission')" name="dealerCommission" id="dealerCommission" placeholder = "현재 ${master.dealerCommission }"/></td>
					<td style="width:50px;"></td>
					<td>ST.플러쉬</td>
					<td><input type="text" class="form-control" onkeyup="isNumGameInfo(this.value,'straightFlushJackpot')" name="straightFlushJackpot" id="straightFlushJackpot" placeholder = "현재 ${master.straightFlushJackpot }"/></td>
				</tr>
				<tr>
					<td>잭팟확률</td>
					<td><input type="text" class="form-control" onkeyup="isNumGameInfo(this.value,'jackpotProbability')" name="jackpotProbability" id="jackpotProbability" placeholder = "현재 ${master.jackpotProbability }"/></td>
					<td style="width:50px;"></td>
					<td>포카드</td>
					<td><input type="text" class="form-control" onkeyup="isNumGameInfo(this.value,'fourOfAKindJackpot')" name="fourOfAKindJackpot" id="fourOfAKindJackpot" placeholder = "현재 ${master.fourOfAKindJackpot }"/></td>
				</tr>
				<tr>
					<td colspan="2"></td>
					<td style="width:50px;"></td>
					<td>풀하우스</td>
					<td><input type="text" class="form-control" onkeyup="isNumGameInfo(this.value,'fullHouseJackpot')" name="fullHouseJackpot" id="fullHouseJackpot" placeholder = "현재 ${master.fullHouseJackpot }"/></td>
				</tr>
				<tr>
					<td colspan="2"></td>
					<td style="width:50px;"></td>
					<td>플러쉬</td>
					<td><input type="text" class="form-control" onkeyup="isNumGameInfo(this.value,'flushJackpot')" name="flushJackpot" id="flushJackpot" placeholder = "현재 ${master.flushJackpot }"/></td>
				</tr>
				<tr>
					<td colspan="2" id="timeTd" style="color:#662500;"></td>
					<td style="width:50px;"></td>
					<td>스트레이트</td>
					<td><input type="text" class="form-control" onkeyup="isNumGameInfo(this.value,'straightJackpot')" name="straightJackpot" id="straightJackpot" placeholder = "현재 ${master.straightJackpot }"/></td>
				</tr>
				<tr>
					<td>긴급공지사항</td>
					<td><input type="date" id="endDate"/><input type="text" id="si" placeholder="00~24"> 시<input type="text" id="bun" placeholder="00~59"> 분</td>
					<td style="width:50px;"></td>
					<td>쓰리카드</td>
					<td><input type="text" class="form-control" onkeyup="isNumGameInfo(this.value,'threeOfAKindJackpot')" name="threeOfAKindJackpot" id="threeOfAKindJackpot" placeholder = "현재 ${master.threeOfAKindJackpot }"/></td>
				</tr>
				<tr>
					<td rowspan="2" colspan="3">
						<textarea row="5" style="width:100%;" class="form-control" id="msg" placeholder="전송버튼을 누르면 입력하신 시간동안 1분간격으로  공지발송"></textarea>
					</td>
					<td>투페어</td>
					<td><input type="text" class="form-control" onkeyup="isNumGameInfo(this.value,'twoPairJackpot')" name="twoPairJackpot" id="twoPairJackpot" placeholder = "현재 ${master.twoPairJackpot }"/></td>
				</tr>
				<tr>
					<td>원페어</td>
					<td><input type="text" class="form-control" onkeyup="isNumGameInfo(this.value,'onepairJackpot')" name="onepairJackpot" id="onepairJackpot" placeholder = "현재 ${master.onepairJackpot }"/></td>
				</tr>
				<tr>
					<td colspan="3" style="text-align:right;">
						<c:if test="${workCheck eq 'working'}">
							<button type="button" class="btn btn-primary" id="transBtn" onclick="transmission();" style="display:none;">긴급공지전송</button>
							<button type="button" class="btn btn-danger" id="stopBtn" onclick="stopNotice();">중지</button>
						</c:if>
						<c:if test="${workCheck eq 'notWork'}">
							<button type="button" class="btn btn-primary" id="transBtn" onclick="transmission();">긴급공지전송</button>
							<button type="button" class="btn btn-danger" id="stopBtn" onclick="stopNotice();" style="display:none;">중지</button>
						</c:if>
						<button type="button" class="btn btn-danger" id="stopBtn" onclick="stopNotice();" style="display:none;">중지</button>
					</td>
					<td>하이카드</td>
					<td><input type="text" class="form-control" onkeyup="isNumGameInfo(this.value,'noPairJackpot')" name="noPairJackpot" id="noPairJackpot" placeholder = "현재 ${master.noPairJackpot }"/></td>
				</tr>
			</table>
		</form>
	</div>
</div> <!-- page-wrapper End -->

<c:import url="../popup/mms_list.jsp"></c:import>
<c:import url="../popup/modify_myInfo.jsp"></c:import>
</body>
</html>