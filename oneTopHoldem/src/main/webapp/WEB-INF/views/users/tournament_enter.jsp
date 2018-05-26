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
</head>

<script>
function info_pop(url){

	var popupX = (window.screen.width / 2) - (570 / 2);
	var popupY= (window.screen.height /2) - (500 / 2);

	window.open(url, '원탑홀덤 토너먼트 정보', 'status=no, height=500, width=570, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
}
</script>

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
					<li><a href="tournamentMenu">· 토너먼트 일정&결과</a></li>
					<li><a href="tournamentGame">· 토너먼트란?</a></li>
					<li class="over"><a href="tournamentEnter">· 토너먼트 참가방법</a></li>
					<li><a href="tournamentGuide">· 게임방법&상금</a></li>
				</ul>
			</div>
			<div><img src="resources/img/sub_down_btn.jpg"></div>
		</div>
		<div id="container">
			<div style="padding-bottom:10px;">
				<span id="container_title">토너먼트 참가방법</span>
				<div class="sub_nav"><img src="resources/img/home_icon.jpg"> HOME&nbsp;&nbsp;>&nbsp;&nbsp;토너먼트&nbsp;&nbsp;>&nbsp;&nbsp;<b>토너먼트 참가방법</b></div>
			</div>
			

			<div id="tournament_event" style="height:150px;">
				<div><img src="resources/img/trophy_icon.jpg"></div>
				<div style="margin:-150px 0 0 220px;width:68%;font-size:10pt;font-weight:600;line-height:18px;">
				토너먼트는 정해진 시간에 수백명이 동시에 동일한 칩을 가지고 게임에 참가하여 최종 우승자 1명이 나올때까지 진행되는 게임을 말합니다.<br><br>
				토너먼트에서는 시간이 경과함에 따라 블라인드가 지속적으로 상승하게 되며 게임 중에 칩을 많이 모으지 않으면 탈락하게 됩니다.<br><br>
				가장 큰 묘미는 적은 참가비를 지불하고 순위에 들면 참가비의 수십~수백 배 이상의 상금을 바을 수 있다는 점입니다.
				</div>
			</div>
			<div class="game_sub_title">♣ 토너먼트 용어</div>
			<div id="notice_list">
				<table width=100% cellpadding=0 cellspacing=0>
					<tr>
						<th>토너먼트 종류</th>
						<th>토너먼트 설명</th>
					</tr>
					<tr>
						<td class="part"><span class="part_icon" style="color:#ff0000">G</span> 개런티 (Guaranteed)</td>
						<td class="subject">총 상금을 보장해 주는 토너먼트 방식으로, 일반 토너먼트와 달리 개런티 토너먼트는 참가자 수가 적어도 보장 된 상금 이상을 받을 수 있습니다.</td>
					</tr>
					<tr>
						<td class="part"><span class="part_icon" style="color:#0cff00">F</span> 프리롤 (Freefoll)</td>
						<td class="subject">참가비 없이 참가할 수 있는 토너먼트를 말합니다.</td>
					</tr>
					<tr>
						<td class="part"><span class="part_icon" style="color:#00fcff">T</span> 터보 (Turbo)</td>
						<td class="subject">일반 토너먼트보다 진행 시간을 빠르게 한 토너먼트로, 베팅 타임이 적고 레벨 상승 시간이 짧습니다.</td>
					</tr>
					<tr>
						<td class="part"><span class="part_icon" style="color:#f6ff00">R</span> 리바이 (Re-buy)</td>
						<td class="subject">토너먼트 중에 가지고 있는 칩을 모두 잃은 경우, 참가비를 추가로 지불하고 칩을 추가로 받는 것을 리바이라고 하며, 리바이가 가능한 토너먼트에서만 기회가 주어집니다.</td>
					</tr>
					<tr>
						<td class="part"><span class="part_icon" style="color:#ff00d2">D</span> 더블 바이인<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(Double buy-in)</td>
						<td class="subject">토너먼트 참가시 참가비의 2배를 지불하고 시작 칩의 2배를 가지고 토너먼트에 참가 하는 것을 말합니다. 더블 바이인이 가능한 토너먼트에서만 기회가 주어집니다.</td>
					</tr>
					<tr>
						<td class="part"><span class="part_icon" style="color:#ff7e00">A</span> 애드온 (Add-on)</td>
						<td class="subject">첫번째 브레이크 타임까지 남아있는 참가자는 토너먼트 칩을 추가로 구입할 수 있는 기회가 주어지는데 이를 애드온이라하며, 보통 시작 칩의 1.5배~2배 정도의 칩을 추가로 받게 됩니다.</td>
					</tr>
					<tr>
						<td class="part"><span class="part_icon" style="color:#9c00ff">L</span> 레벨 (Level)</td>
						<td class="subject">토너먼트에서는 일정 시간이 지나면 블라인드가 상승하게 되는데, 이때 각 블라인드가 적용되는 구간을 레벨이라 합니다.(처음 시작 레벨을 레벨 1이라고 함.)</td>
					</tr>
					<tr>
						<td class="part"><span class="part_icon" style="color:#fff">B</span> 브레이크 (Break)</td>
						<td class="subject">토너먼트에서는 우승자가 나오기까지 오랜 시간 게임이 진행되므로, 보통 1시간에 1번씩 잠시 게임을 쉴 수 있는 휴식 기간이 주어집니다. 이 시간을 브레이크 타임이라고 합니다.</td>
					</tr>
				</table>
			</div>
			<br>
		</div>
	</div>

	<!---- content ---------->


	<!---- footer ---------->
	<c:import url="../module/footer.jsp"></c:import>

	<!---- footer ---------->
</div>

</body>
</html>