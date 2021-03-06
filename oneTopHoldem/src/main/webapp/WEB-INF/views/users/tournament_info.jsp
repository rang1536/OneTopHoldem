<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>원탑홀덤</title>
<link rel="stylesheet" href="resources/css/default.css">
<script src="resources/js/jquery-3.2.1.min.js"></script>
<script>
function info_pop(tId){

	var popupX = (window.screen.width / 2) - (570 / 2);
	var popupY= (window.screen.height /2) - (500 / 2);
	var url = 'tournamentInfoView?tId='+tId;
	window.open(url, '원탑홀덤 토너먼트 정보', 'status=no, height=500, width=570, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
}

$(document).ready(function(){

		
});
	
</script>
</head>
<body>

<!---- headr ---------->
<c:import url="../module/top.jsp"></c:import>

<!---- headr ---------->

<div id="warp">
	<!---- content ---------->

	<div id="content">
		<div id="aside">
			<div class="tit">
				<div class="tt"><span class="big">토너먼트</span><br>TOURNAMENT GAME</div>
			</div>
			<div class="sub_menu">
				<ul>
					<li class="over"><a href="tournamentMenu">· 토너먼트 일정&결과</a></li>
					<li><a href="tournamentGame">· 토너먼트란?</a></li>
					<li><a href="tournamentEnter">· 토너먼트 참가방법</a></li>
					<li><a href="tournamentGuide">· 게임방법&상금</a></li>
				</ul>
			</div>
			<div><a href="https://s3.ap-northeast-2.amazonaws.com/onetop/HoldemSetup.exe"><img src="resources/img/sub_down_btn.jpg"></a></div>
		</div>
		<div id="container">
			<div style="padding-bottom:10px;">
				<span id="container_title">토너먼트</span>
				<div class="sub_nav"><img src="resources/img/home_icon.jpg"> HOME&nbsp;&nbsp;>&nbsp;&nbsp;토너먼트&nbsp;&nbsp;>&nbsp;&nbsp;<b>토너먼트 일정&결과</b></div>
			</div>

			<div id="tournament_event">
				<div style="font-size:14pt;font-weight:600;height:35px;color:#092a88;">♣ 원탑 토너먼트</div>
				<div id="tab">
					<div class="event_title">Big Event (빅 이벤트)</div>
					<div style="float:left;">주간/월간/연간 빅 토너먼트와 같은 이벤트성 토너먼트 및 빅 이벤트 티켓 토너먼트</div>
				</div>
				<div id="tab">
					<div class="event_title">Guarantee (개런티)</div>
					<div style="float:left;">총 상금을 보장해 주는 토너먼트</div>
				</div>
				<div id="tab">
					<div class="event_title">Ticket (티켓)</div>
					<div style="float:left;">각종 토너먼트 참가 티켓을 얻기 위한 토너먼트</div>
				</div>
				<div id="tab">
					<div class="event_title">Freeroll (프리롤)</div>
					<div style="float:left;">참가비 없이 참가할 수 있는 토너먼트</div>
				</div>
				<div id="tab">
					<div class="event_title">Freeze Out (프리즈 아웃)</div>
					<div style="float:left;">한명의 플레이어가 모든 돈을 가질 때까지 진행되는 토너먼트</div>
				</div>
			</div>

			<div id="tab">
				<ul>
					<li class="over" onclick="location.href='tournamentMenu'">일정</li>
					<li onclick="location.href='tournamentResult'">결과</li>
				</ul>
			</div>
			<div style="margin-top:-10px;font-size:11px;color:#003ef1;text-align:right;">※ 각 토너먼트를 클릭하시면, 해당 토너먼트의 상세 정보를 확인하실 수 있습니다.</div>

			<div id="notice_list">
				<table width=100% cellpadding=0 cellspacing=0>
					<tr>
						<th>시작시간</th>
						<th>토너먼트명</th>
						<th>참가비(수수료)</th>
						<th>정보확인</th>
					</tr>
					<c:forEach var="item" items="${list}" varStatus="status">
						<tr>
							<td class="date">${item.startDate }</td>
							<td class="subject">${item.title}! 티켓 ${item.needTicket}장</td>
							<td class="charge">${item.needGold}골드 (${item.needCommission})</td>
							<td class="name"><a href="javascript:info_pop('${item.tournamentId }');" class="btn02">토너정보</a></td>
						</tr>
					</c:forEach>
				</table>
			</div>
			<div>
				<nav class="pg_wrap">
					<span class="pg">
						<fmt:parseNumber var="last" value="${totCnt/10}" integerOnly="true"/>
						<a href="tournamentMenu" class="pg_page pg_start">처음</a>
						<a href="tournamentMenu?page=${currentPage-1 }" class="pg_page pg_prev">&lt;</a>
						<c:forEach var="item" varStatus="i" begin="1" end="${last+1}" step="1">
							<c:choose>
								<c:when test="${currentpage == i.index }">
									<strong class="pg_current">${i.index }</strong>
								</c:when>
								<c:otherwise>
									<a href="tournamentMenu?page=${i.index }" class="pg_page">${i.index }</a>		
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<a href="tournamentMenu?page=${currentpage+1 }" class="pg_page pg_next">&gt;</a>
						<a href="tournamentMenu?page=${last}" class="pg_page pg_end">맨끝</a>
					</span>
				</nav>
			</div>
		</div>
	</div>

	<!---- content ---------->



	<!---- footer ---------->
	<c:import url="../module/footer.jsp"></c:import>

	<!---- footer ---------->
</div>

</body>
</html>