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
					<li><a href="tournamentEnter">· 토너먼트 참가방법</a></li>
					<li class="over"><a href="tournamentGuide">· 게임방법&상금</a></li>
				</ul>
			</div>
			<div><img src="resources/img/sub_down_btn.jpg"></div>
		</div>
		<div id="container">
			<div style="padding-bottom:10px;">
				<span id="container_title">게임방법&상금</span>
				<div class="sub_nav"><img src="resources/img/home_icon.jpg"> HOME&nbsp;&nbsp;>&nbsp;&nbsp;토너먼트&nbsp;&nbsp;>&nbsp;&nbsp;<b>게임방법&상금</b></div>
			</div>
			
			<div class="game_sub_title" style="padding:10px 0 10px 0;">♣ 게임방법</div>
			<div id="tournament_event" style="line-height:140%;">
				<span class="game_guide_title">토너먼트 시작</span><br><br>
				1. 토너먼트가 시작되면 모든 참가자들은 같은 양의 칩을 가지고 랜덤하게 자리를 배정 받아 게임을 하게 됩니다.<br>
				&nbsp;&nbsp;&nbsp;&nbsp;(더블 바이인 토너먼트의 경우, 참가비를 추가로 지불하고 시작 칩의 2배를 가지고 토너먼트에 참가할 수 있습니다.)<br><br>
				2. 게임이 시작되면 먼저 딜러를 정하기 위해 카드를 한장씩 받아 가장 높은 카드를 받은 플레이어가 딜러가 됩니다.<br>
				&nbsp;&nbsp;&nbsp;&nbsp;(카드 숫자가 같은 경우 무늬 ♠ > ◆ > ♥ > ♣ 를 따져 딜러를 정합니다.)<br><br><br>
				<span class="game_guide_title">토너먼트 진행</span><br><br>
				1. 딜러가 정해지면 일반 링게임과 같은 방식으로 게임을 진행하여 보유한 칩을 모두 잃으면 토너먼트에서 탈락하게 됩니다.<br>
				&nbsp;&nbsp;&nbsp;&nbsp;(리바이 토너먼트의 경우 시작 칩을 모두 잃어도 참가비를 다시 지불하고 다시 칩을 받아 게임에 참가할 수 있습니다.)<br><br>
				2. 게임 중 토너먼트 탈락자가 발생하여 테이블의 빈자리가 생기면 자리를 채워주기 위해 플레이어들의 자리를 이동하게 됩니다.<br><br>
				3. 토너먼트에서는 레벨이 있어서 일정 시간이 지나면 레벨이 올라가면서 블라인드와 앤트 금액이 상승하게 됩니다.<br><br>
				4. 토너먼트에서는 일반 링게임과 다르게 베팅 된 칩에 대해 수수료를 받지 않으며 자리 이동 등을 통해 새로운 테이블에 입장하더라도<br>
				&nbsp;&nbsp;&nbsp;&nbsp;'Post Blind'를 지불하지 않습니다.<br><br><br>
				<span class="game_guide_title">순위 결정</span><br><br>
				1. 칩을 모두 잃어 탈락한 경우 남아 있는 플레이어들의 수에 따라 순위가 결정되며 상금 순위 안에 포함된 경우 상금을 지급받게 됩니다.<br><br>
				2. 만약 2명 이상의 플레이어가 동시에 탈락하게 된 경우 해당 판 시작 시 보유한 칩이 많은 순으로 순위를 결정하게 되며<br>
				&nbsp;&nbsp;&nbsp;&nbsp;보유 칩이 같을 경우 공동 순위가 되어 해당 상금을 나눠 갖게 됩니다.
			</div>

			<div class="game_sub_title" style="padding:10px 0 10px 0;">♣ 상금 지급</div>
			<div id="tournament_event" style="height:180px;">
				<div><img src="resources/img/prize_icon1.jpg"></div>
				<div style="margin:-135px 0 0 180px;width:75%;font-size:10pt;font-weight:600;line-height:18px;">
				상금 지급은 해당 토너먼트가 종료 된 후 최종 상금과 순위가 결정 된 후 일괄 지급하게 됩니다.<br><br>
				토너먼트 상금은 해당 토너먼트에 참가한 플레이어들이 지불한 참가비(수수료 제외)를 모두 합해 토너먼트 순위에 따라 비율적으로 지급하게 됩니다.<br>
				(참가자 수에 따라 아래 표와 같이 지급하는 대상 순위와 비율이 달라지게 됩니다.)<br><br>
				ex)참가비가 $300,000(수수료 $ 30,000)이고, 총 참가자가 100명인 경우 해당 토너먼트의 총 상금은 $ 30,000,000가 되고 20등까지 상금을 나눠 갖게 됩니다.(아래 표 참조)<br>
				만약 최종 순위가 3등인 경우 해당 플레이어는 총상금의 10%인 $ 30,000,000을 상금으로 받게 됩니다.
				</div>
			</div>
			<div class="game_sub_title">♣ 상금 지급표</div>
			<div id="prize">
				<table width=100% cellpadding=0 cellspacing=0>
					<tr>
						<th>참가자수</th>
						<th>2</th>
						<th>3~8</th>
						<th>9~21</th>
						<th>22~27</th>
						<th>28~35</th>
						<th>36~42</th>
						<th>43~49</th>
					</tr>
					<tr class="listnum">
						<td>상금권</td>
						<td>1</td>
						<td>2</td>
						<td>3</td>
						<td>4</td>
						<td>5</td>
						<td>6</td>
						<td>7</td>
					</tr>
					<tr bgcolor=#e9e9e9>
						<td class="chk">1</td>
						<td>100.00%</td>
						<td>65.00%</td>
						<td>50.00%</td>
						<td>45.00%</td>
						<td>40.00%</td>
						<td>37.00%</td>
						<td>35.00%</td>				
					</tr>
					<tr bgcolor=#f2eee5>
						<td class="chk">2</td>
						<td></td>
						<td>35.00%</td>
						<td>30.00%</td>
						<td>30.00%</td>
						<td>27.00%</td>
						<td>25.00%</td>
						<td>22.50%</td>				
					</tr>
					<tr bgcolor=#e9e9e9>
						<td class="chk">3</td>
						<td></td>
						<td></td>
						<td>20.00%</td>
						<td>15.00%</td>
						<td>15.00%</td>
						<td>15.00%</td>
						<td>15.00%</td>				
					</tr>
					<tr bgcolor=#f2eee5>
						<td class="chk">4</td>
						<td></td>
						<td></td>
						<td></td>
						<td>10.00%</td>
						<td>10.00%</td>
						<td>10.00%</td>
						<td>10.00%</td>				
					</tr>
					<tr bgcolor=#e9e9e9>
						<td class="chk">5</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td>8.00%</td>
						<td>7.50%</td>
						<td>7.50%</td>				
					</tr>
					<tr bgcolor=#f2eee5>
						<td class="chk">6</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td>5.50%</td>
						<td>5.50%</td>				
					</tr>
					<tr bgcolor=#e9e9e9>
						<td class="chk">7</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td>4.50%</td>				
					</tr>
					<tr bgcolor=#f2eee5>
						<td class="chk">8</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>				
					</tr>
					<tr bgcolor=#e9e9e9>
						<td class="chk">9</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>				
					</tr>
					<tr bgcolor=#f2eee5>
						<td class="chk">10,11,12</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>				
					</tr>
					<tr bgcolor=#e9e9e9>
						<td class="chk">13,14,15</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>				
					</tr>
					<tr bgcolor=#f2eee5>
						<td class="chk">16,17,18</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>				
					</tr>
					<tr bgcolor=#e9e9e9>
						<td class="chk">19~27</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>				
					</tr>
					<tr bgcolor=#f2eee5>
						<td class="chk">28~36</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>				
					</tr>
					<tr bgcolor=#e9e9e9>
						<td class="chk">37~45</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>				
					</tr>
					<tr bgcolor=#f2eee5>
						<td class="chk">46~54</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>				
					</tr>
					<tr bgcolor=#e9e9e9>
						<td class="chk">55~63</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>				
					</tr>
					<tr bgcolor=#f2eee5>
						<td class="chk">64~72</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>				
					</tr>
					<tr bgcolor=#e9e9e9>
						<td class="chk">73~81</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>				
					</tr>
					<tr bgcolor=#f2eee5>
						<td class="chk">82~90</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>				
					</tr>
					<tr bgcolor=#e9e9e9>
						<td class="chk">91~99</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>				
					</tr>
				</table>
				<br><br>
				<table width=100% cellpadding=0 cellspacing=0>
					<tr>
						<th>참가자수</th>
						<th>50~56</th>
						<th>57~63</th>
						<th>64~72</th>
						<th>73~98</th>
						<th>99~126</th>
						<th>127~189</th>
						<th>190~252</th>
					</tr>
					<tr class="listnum">
						<td>상금권</td>
						<td>8</td>
						<td>9</td>
						<td>12</td>
						<td>15</td>
						<td>18</td>
						<td>27</td>
						<td>36</td>
					</tr>
					<tr bgcolor=#e9e9e9>
						<td class="chk">1</td>
						<td>32.50%</td>
						<td>30.00%</td>
						<td>27.55%</td>
						<td>25.50%</td>
						<td>25.00%</td>
						<td>23.00%</td>
						<td>22.50%</td>				
					</tr>
					<tr bgcolor=#f2eee5>
						<td class="chk">2</td>
						<td>21.00%</td>
						<td>20.00%</td>
						<td>18.50%</td>
						<td>16.00%</td>
						<td>15.50%</td>
						<td>14.00%</td>	
						<td>13.50</td>
					</tr>
					<tr bgcolor=#e9e9e9>
						<td class="chk">3</td>
						<td>15.00%</td>
						<td>15.00</td>
						<td>14.00%</td>
						<td>11.50%</td>
						<td>11.00%</td>
						<td>10.50%</td>
						<td>10.30%</td>				
					</tr>
					<tr bgcolor=#f2eee5>
						<td class="chk">4</td>
						<td>10.00%</td>
						<td>10.00%</td>
						<td>9.50%</td>
						<td>9.0%</td>
						<td>8.50%</td>
						<td>8.00%</td>
						<td>7.75%</td>				
					</tr>
					<tr bgcolor=#e9e9e9>
						<td class="chk">5</td>
						<td>7.50%</td>
						<td>7.50%</td>
						<td>7.00%</td>
						<td>7.50%</td>
						<td>7.00%</td>
						<td>6.00%</td>
						<td>6.00%</td>				
					</tr>
					<tr bgcolor=#f2eee5>
						<td class="chk">6</td>
						<td>5.50%</td>
						<td>5.50%</td>
						<td>5.25%</td>
						<td>6.00%</td>
						<td>5.50%</td>
						<td>4.50%</td>
						<td>4.50%</td>				
					</tr>
					<tr bgcolor=#e9e9e9>
						<td class="chk">7</td>
						<td>4.50%</td>
						<td>4.50%</td>
						<td>4.25%</td>
						<td>4.50%</td>
						<td>4.00%</td>
						<td>3.50%</td>
						<td>3.50%</td>				
					</tr>
					<tr bgcolor=#f2eee5>
						<td class="chk">8</td>
						<td>4.00%</td>
						<td>4.00%</td>
						<td>3.75%</td>
						<td>3.50%</td>
						<td>3.00%</td>
						<td>2.90%</td>
						<td>2.70%</td>				
					</tr>
					<tr bgcolor=#e9e9e9>
						<td class="chk">9</td>
						<td></td>
						<td>3.50%</td>
						<td>3.00%</td>
						<td>3.00%</td>
						<td>2.50%</td>
						<td>2.40%</td>
						<td>2.10%</td>				
					</tr>
					<tr bgcolor=#f2eee5>
						<td class="chk">10,11,12</td>
						<td></td>
						<td></td>
						<td>2.40%</td>
						<td>2.50%</td>
						<td>2.20%</td>
						<td>2.00%</td>
						<td>1.65%</td>				
					</tr>
					<tr bgcolor=#e9e9e9>
						<td class="chk">13,14,15</td>
						<td></td>
						<td></td>
						<td></td>
						<td>2.00%</td>
						<td>2.00%</td>
						<td>1.70%</td>
						<td>1.35%</td>				
					</tr>
					<tr bgcolor=#f2eee5>
						<td class="chk">16,17,18</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td>1.80%</td>
						<td>1.40%</td>
						<td>1.10%</td>				
					</tr>
					<tr bgcolor=#e9e9e9>
						<td class="chk">19~27</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td>1.10%</td>
						<td>0.90%</td>				
					</tr>
					<tr bgcolor=#f2eee5>
						<td class="chk">28~36</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td>0.75%</td>				
					</tr>
					<tr bgcolor=#e9e9e9>
						<td class="chk">37~45</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>				
					</tr>
					<tr bgcolor=#f2eee5>
						<td class="chk">46~54</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>				
					</tr>
					<tr bgcolor=#e9e9e9>
						<td class="chk">55~63</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>				
					</tr>
					<tr bgcolor=#f2eee5>
						<td class="chk">64~72</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>				
					</tr>
					<tr bgcolor=#e9e9e9>
						<td class="chk">73~81</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>				
					</tr>
					<tr bgcolor=#f2eee5>
						<td class="chk">82~90</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>				
					</tr>
					<tr bgcolor=#e9e9e9>
						<td class="chk">91~99</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>				
					</tr>
				</table>
				<br><br>
				<table width=100% cellpadding=0 cellspacing=0>
					<tr>
						<th>참가자수</th>
						<th>253~315</th>
						<th>316~378</th>
						<th>379~441</th>
						<th>442~504</th>
						<th>505~576</th>
						<th>577~648</th>
						<th>649~</th>
					</tr>
					<tr class="listnum">
						<td>상금권</td>
						<td>45</td>
						<td>54</td>
						<td>63</td>
						<td>72</td>
						<td>81</td>
						<td>90</td>
						<td>99</td>
					</tr>
					<tr bgcolor=#e9e9e9>
						<td class="chk">1</td>
						<td>21.50%</td>
						<td>19.25%</td>
						<td>19.00%</td>
						<td>18.90%</td>
						<td>18.80%</td>
						<td>18.75%</td>
						<td>18.35%</td>				
					</tr>
					<tr bgcolor=#f2eee5>
						<td class="chk">2</td>
						<td>13.25%</td>
						<td>14.30%</td>
						<td>14.00%</td>
						<td>13.85%</td>
						<td>13.70%</td>
						<td>13.50%</td>
						<td>13.10%</td>				
					</tr>
					<tr bgcolor=#e9e9e9>
						<td class="chk">3</td>
						<td>9.50%</td>
						<td>10.50%</td>
						<td>10.25%</td>
						<td>10.20%</td>
						<td>10.10%</td>
						<td>10.00%</td>
						<td>9.90%</td>				
					</tr>
					<tr bgcolor=#f2eee5>
						<td class="chk">4</td>
						<td>7.25%</td>
						<td>8.00%</td>
						<td>7.80%</td>
						<td>7.70%</td>
						<td>7.60%</td>
						<td>7.50%</td>
						<td>7.45%</td>				
					</tr>
					<tr bgcolor=#e9e9e9>
						<td class="chk">5</td>
						<td>5.50%</td>
						<td>5.60%</td>
						<td>5.50%</td>
						<td>5.40%</td>
						<td>5.34%</td>
						<td>5.25%</td>
						<td>5.20%</td>				
					</tr>
					<tr bgcolor=#f2eee5>
						<td class="chk">6</td>
						<td>4.20%</td>
						<td>4.35%</td>
						<td>4.25%</td>
						<td>4.25%</td>
						<td>4.25%</td>
						<td>4.25%</td>
						<td>4.20%</td>				
					</tr>
					<tr bgcolor=#e9e9e9>
						<td class="chk">7</td>
						<td>3.10%</td>
						<td>3.35%</td>
						<td>3.25%</td>
						<td>3.25%</td>
						<td>3.25%</td>
						<td>3.25%</td>
						<td>3.20%</td>				
					</tr>
					<tr bgcolor=#f2eee5>
						<td class="chk">8</td>
						<td>2.50%</td>
						<td>2.35%</td>
						<td>2.25%</td>
						<td>2.25%</td>
						<td>2.25%</td>
						<td>2.25%</td>
						<td>2.20%</td>				
					</tr>
					<tr bgcolor=#e9e9e9>
						<td class="chk">9</td>
						<td>2.00%</td>
						<td>1.70%</td>
						<td>1.66%</td>
						<td>1.53%</td>
						<td>1.50%</td>
						<td>1.41%</td>
						<td>1.30%</td>				
					</tr>
					<tr bgcolor=#f2eee5>
						<td class="chk">10,11,12</td>
						<td>1.60%</td>
						<td>1.30%</td>
						<td>1.20%</td>
						<td>1.20%</td>
						<td>1.15%</td>
						<td>1.10%</td>
						<td>1.10%</td>				
					</tr>
					<tr bgcolor=#e9e9e9>
						<td class="chk">13,14,15</td>
						<td>1.30%</td>
						<td>1.10%</td>
						<td>1.00%</td>
						<td>1.00%</td>
						<td>0.95%</td>
						<td>0.90%</td>
						<td>0.90%</td>				
					</tr>
					<tr bgcolor=#f2eee5>
						<td class="chk">16,17,18</td>
						<td>1.05%</td>
						<td>0.90%</td>
						<td>0.80%</td>
						<td>0.80%</td>
						<td>0.75%</td>
						<td>0.70%</td>
						<td>0.70%</td>				
					</tr>
					<tr bgcolor=#e9e9e9>
						<td class="chk">19~27</td>
						<td>0.85%</td>
						<td>0.65%</td>
						<td>0.60%</td>
						<td>0.60%</td>
						<td>0.56%</td>
						<td>0.50%</td>
						<td>0.50%</td>				
					</tr>
					<tr bgcolor=#f2eee5>
						<td class="chk">28~36</td>
						<td>0.70%</td>
						<td>0.60%</td>
						<td>0.55%</td>
						<td>0.50%</td>
						<td>0.45%</td>
						<td>0.45%</td>
						<td>0.43%</td>				
					</tr>
					<tr bgcolor=#e9e9e9>
						<td class="chk">37~45</td>
						<td>0.60%</td>
						<td>0.55%</td>
						<td>0.50%</td>
						<td>0.45%</td>
						<td>0.40%</td>
						<td>0.40%</td>
						<td>0.38%</td>				
					</tr>
					<tr bgcolor=#f2eee5>
						<td class="chk">46~54</td>
						<td></td>
						<td>0.50%</td>
						<td>0.47%</td>
						<td>0.40%</td>
						<td>0.37%</td>
						<td>0.35%</td>
						<td>0.34%</td>				
					</tr>
					<tr bgcolor=#e9e9e9>
						<td class="chk">55~63</td>
						<td></td>
						<td></td>
						<td>0.44%</td>
						<td>0.35%</td>
						<td>0.35%</td>
						<td>0.32%</td>
						<td>0.31%</td>				
					</tr>
					<tr bgcolor=#f2eee5>
						<td class="chk">64~72</td>
						<td></td>
						<td></td>
						<td></td>
						<td>0.33%</td>
						<td>0.32%</td>
						<td>0.30%</td>
						<td>0.29%</td>				
					</tr>
					<tr bgcolor=#e9e9e9>
						<td class="chk">73~81</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td>0.29%</td>
						<td>0.28%</td>
						<td>0.27%</td>				
					</tr>
					<tr bgcolor=#f2eee5>
						<td class="chk">82~90</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td>0.26%</td>
						<td>0.25%</td>				
					</tr>
					<tr bgcolor=#e9e9e9>
						<td class="chk">91~99</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td>0.23%</td>				
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