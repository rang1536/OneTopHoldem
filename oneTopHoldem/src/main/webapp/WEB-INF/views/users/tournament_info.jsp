<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>원탑홀덤</title>
<link rel="stylesheet" href="resources/css/default.css">
<script src="resources/js/jquery-3.2.1.min.js"></script>
<script>
function info_pop(url){

	var popupX = (window.screen.width / 2) - (570 / 2);
	var popupY= (window.screen.height /2) - (500 / 2);

	window.open(url, '원탑홀덤 토너먼트 정보', 'status=no, height=500, width=570, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
}
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
			<div><img src="resources/img/sub_down_btn.jpg"></div>
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
					<tr>
						<td class="date">2018-01-09 20:00</td>
						<td class="subject">300억 빅토너 가는길! 15,000 티켓 (3장)</td>
						<td class="charge">2,000만 칩 (200만 칩)</td>
						<td class="name"><a href="javascript:info_pop('tournamentInfoView');" class="btn02">토너정보</a></td>
					</tr>
					<tr bgcolor=#f6f6f6>
						<td class="date">2018-01-09 20:00</td>
						<td class="subject">300억 빅토너 가는길! 15,000 티켓 (3장)</td>
						<td class="charge">2,000만 칩 (200만 칩)</td>
						<td class="name"><a href="javascript:info_pop('tournamentInfoView');" class="btn02">토너정보</a></td>
					</tr>
					<tr>
						<td class="date">2018-01-09 20:00</td>
						<td class="subject">300억 빅토너 가는길! 15,000 티켓 (3장)</td>
						<td class="charge">2,000만 칩 (200만 칩)</td>
						<td class="name"><a href="javascript:info_pop('tournamentInfoView');" class="btn02">토너정보</a></td>
					</tr>
					<tr bgcolor=#f6f6f6>
						<td class="date">2018-01-09 20:00</td>
						<td class="subject">300억 빅토너 가는길! 15,000 티켓 (3장)</td>
						<td class="charge">2,000만 칩 (200만 칩)</td>
						<td class="name"><a href="javascript:info_pop('tournamentInfoView');" class="btn02">토너정보</a></td>
					</tr>
					<tr>
						<td class="date">2018-01-09 20:00</td>
						<td class="subject">300억 빅토너 가는길! 15,000 티켓 (3장)</td>
						<td class="charge">2,000만 칩 (200만 칩)</td>
						<td class="name"><a href="javascript:info_pop('tournamentInfoView');" class="btn02">토너정보</a></td>
					</tr>
					<tr bgcolor=#f6f6f6>
						<td class="date">2018-01-09 20:00</td>
						<td class="subject">300억 빅토너 가는길! 15,000 티켓 (3장)</td>
						<td class="charge">2,000만 칩 (200만 칩)</td>
						<td class="name"><a href="javascript:info_pop('tournamentInfoView');" class="btn02">토너정보</a></td>
					</tr>
					<tr>
						<td class="date">2018-01-09 20:00</td>
						<td class="subject">300억 빅토너 가는길! 15,000 티켓 (3장)</td>
						<td class="charge">2,000만 칩 (200만 칩)</td>
						<td class="name"><a href="javascript:info_pop('tournamentInfoView');" class="btn02">토너정보</a></td>
					</tr>
					<tr bgcolor=#f6f6f6>
						<td class="date">2018-01-09 20:00</td>
						<td class="subject">300억 빅토너 가는길! 15,000 티켓 (3장)</td>
						<td class="charge">2,000만 칩 (200만 칩)</td>
						<td class="name"><a href="javascript:info_pop('tournamentInfoView');" class="btn02">토너정보</a></td>
					</tr>
					<tr>
						<td class="date">2018-01-09 20:00</td>
						<td class="subject">300억 빅토너 가는길! 15,000 티켓 (3장)</td>
						<td class="charge">2,000만 칩 (200만 칩)</td>
						<td class="name"><a href="javascript:info_pop('tournamentInfoView');" class="btn02">토너정보</a></td>
					</tr>
					<tr bgcolor=#f6f6f6>
						<td class="date">2018-01-09 20:00</td>
						<td class="subject">300억 빅토너 가는길! 15,000 티켓 (3장)</td>
						<td class="charge">2,000만 칩 (200만 칩)</td>
						<td class="name"><a href="javascript:info_pop('tournamentInfoView');" class="btn02">토너정보</a></td>
					</tr>
					<tr>
						<td class="date">2018-01-09 20:00</td>
						<td class="subject">300억 빅토너 가는길! 15,000 티켓 (3장)</td>
						<td class="charge">2,000만 칩 (200만 칩)</td>
						<td class="name"><a href="javascript:info_pop('tournamentInfoView');" class="btn02">토너정보</a></td>
					</tr>
					<tr bgcolor=#f6f6f6>
						<td class="date">2018-01-09 20:00</td>
						<td class="subject">300억 빅토너 가는길! 15,000 티켓 (3장)</td>
						<td class="charge">2,000만 칩 (200만 칩)</td>
						<td class="name"><a href="javascript:info_pop('tournamentInfoView');" class="btn02">토너정보</a></td>
					</tr>
					<tr>
						<td class="date">2018-01-09 20:00</td>
						<td class="subject">300억 빅토너 가는길! 15,000 티켓 (3장)</td>
						<td class="charge">2,000만 칩 (200만 칩)</td>
						<td class="name"><a href="javascript:info_pop('tournamentInfoView');" class="btn02">토너정보</a></td>
					</tr>
					<tr bgcolor=#f6f6f6>
						<td class="date">2018-01-09 20:00</td>
						<td class="subject">300억 빅토너 가는길! 15,000 티켓 (3장)</td>
						<td class="charge">2,000만 칩 (200만 칩)</td>
						<td class="name"><a href="javascript:info_pop('tournamentInfoView');" class="btn02">토너정보</a></td>
					</tr>
					<tr>
						<td class="date">2018-01-09 20:00</td>
						<td class="subject">300억 빅토너 가는길! 15,000 티켓 (3장)</td>
						<td class="charge">2,000만 칩 (200만 칩)</td>
						<td class="name"><a href="javascript:info_pop('tournamentInfoView');" class="btn02">토너정보</a></td>
					</tr>
				</table>
			</div>
			<div>
				<nav class="pg_wrap"><span class="pg">
				<a href="" class="pg_page pg_start">처음</a>
				<a href="" class="pg_page pg_prev"><</a>
				<a href="" class="pg_page">1</a>
				<strong class="pg_current">2</strong>
				<a href="" class="pg_page">3</a>
				<a href="" class="pg_page">4</a>
				<a href="" class="pg_page">5</a>
				<a href="" class="pg_page">6</a>
				<a href="" class="pg_page">7</a>
				<a href="" class="pg_page">8</a>
				<a href="" class="pg_page">9</a>
				<a href="" class="pg_page">10</a>
				<a href="" class="pg_page pg_next">></a>
				<a href="" class="pg_page pg_end">맨끝</a>
				</span></nav>
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