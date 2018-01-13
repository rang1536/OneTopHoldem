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
	// 공지 전송 시작 - 음? 시간 잘못입력한것도 체크 해줘야 하나?
	function transmission(){
		var hour = $('#si').val().trim(); 
		var minute = $('#bun').val().trim();
		var msg = $('#msg').val();
		var date = new Date();
		
		var nowDate = (date.getMonth()+1)+date.getDate();
		var nowDateText = (date.getMonth()+1)+' 월'+date.getDate()+' 일';
		
		if(hour == null || hour == ''){
			alert('종료시간을 입력하세요');
			return;
		}else if(minute == null || minute == ''){
			alert('종료시간을 입력하세요');
			return;
		}else if(msg == null || msg == ''){
			alert('공지 내용을 입력하세요');
			return;
		}
		
		if(hour )
		if(confirm(nowDateText+' '+hour+' 시'+minute+' 분 까지 공지 발송을 하시겠습니까?')){	
			// 공지 입력하는 ajax코드 추가
			
			// 버튼 체인지
			$('#transBtn').css('display','none');
			$('#stopBtn').css('display','');
		}		
	}
	
	function valueUpdate(){
		var params = $('#gameForm').serialize();
		
		//유효성검사여부 확인 후 유효성검사 혹은 하지않음.
		
		if(confirm('게임설정을 이대로 바꾸시겠습니까?')){
			//업데이트 하는 ajax코드 추가 후 폼값 지우기
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
						<button type="button" class="btn btn-primary" onclick="valueUpdate();">반영</button>
					</td>
				</tr>
				<tr>
					<td colspan="5" style="font-weight:bold;background-color:#FFFFE4;text-align:center;">
						확률은 해당 숫자의 10,000,000배 만큼 입력해주세요 (예 0.5% = 5,000,000)
					</td>
				</tr>
				<tr>
					<td>딜러비</td>
					<td><input type="text" class="form-control" name="dealerCommission"/></td>
					<td style="width:50px;"></td>
					<td>ST.플러쉬</td>
					<td><input type="text" class="form-control" name="straightFlushJackpot"/></td>
				</tr>
				<tr>
					<td>잭팟확률</td>
					<td><input type="text" class="form-control" name="jackpotProbability"/></td>
					<td style="width:50px;"></td>
					<td>포카드</td>
					<td><input type="text" class="form-control" name="fourOfAKindJackpot"/></td>
				</tr>
				<tr>
					<td colspan="2"></td>
					<td style="width:50px;"></td>
					<td>풀하우스</td>
					<td><input type="text" class="form-control" name="fullHouseJackpot"/></td>
				</tr>
				<tr>
					<td colspan="2"></td>
					<td style="width:50px;"></td>
					<td>플러쉬</td>
					<td><input type="text" class="form-control" name="flushJackpot"/></td>
				</tr>
				<tr>
					<td colspan="2" id="timeTd" style="color:#662500;"></td>
					<td style="width:50px;"></td>
					<td>스트레이트</td>
					<td><input type="text" class="form-control" name="straightJackpot"/></td>
				</tr>
				<tr>
					<td>긴급공지사항</td>
					<td><input type="text" id="si"> 시 <input type="text" id="bun"> 분 까지</td>
					<td style="width:50px;"></td>
					<td>쓰리카드</td>
					<td><input type="text" class="form-control" name="threeOfAKindJackpot"/></td>
				</tr>
				<tr>
					<td rowspan="2" colspan="3">
						<textarea row="5" style="width:100%;" class="form-control" id="msg" placeholder="전송버튼을 누르면 입력하신 시간까지 1분간격으로  공지발송"></textarea>
					</td>
					<td>투페어</td>
					<td><input type="text" class="form-control" name="twoPairJackpot"/></td>
				</tr>
				<tr>
					<td>원페어</td>
					<td><input type="text" class="form-control" name="onepairJackpot"/></td>
				</tr>
				<tr>
					<td colspan="3" style="text-align:right;">
						<button type="button" class="btn btn-primary" id="transBtn" onclick="transmission();">전송</button>
						<button type="button" class="btn btn-danger" id="stopBtn" onclick="stopNotice();" style="display:none;">중지</button>
					</td>
					<td>하이카드</td>
					<td><input type="text" class="form-control" name="noPairJackpot"/></td>
				</tr>
			</table>
		</form>
	</div>
</div> <!-- page-wrapper End -->
</body>
</html>