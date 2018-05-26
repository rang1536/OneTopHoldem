<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>원탑홀덤</title>
<link rel="stylesheet" href="resources/css/default.css">
</head>

<div style="padding:25px;">
	<div class="game_sub_title">♣ 홀덤 기본용어</div>
			<div id="tournament_event">
				<div id="tab">
					<div class="event_title">베팅(Betting)</div>
					<div style="float:left;">처음 금액을 거는 것을 말합니다.</div>
				</div>
				<div id="tab" style="padding:10px 0 10px 0;">
					<div class="event_title">레이즈(Raise)</div>
					<div style="float:left;">처음 나온 베팅에 더 많은 금액을 올리는 것을 말합니다.</div>
				</div>
				<div id="tab">
					<div class="event_title">체크(Check)</div>
					<div style="float:left;">자신의 배팅 권한을 포기하고 순서를 넘기는 것을 말합니다.</div>
				</div>
				<div id="tab" style="padding:10px 0 10px 0;">
					<div class="event_title">폴드(Fold)</div>
					<div style="float:left;">상대의 배팅이나 레이즈에 게임을 포기하는 것을 말합니다.</div>
				</div>
				<div id="tab">
					<div class="event_title">올인(All in)</div>
					<div style="float:left;">자신이 가진 모든 칩을 거는 것을 말합니다.</div>
				</div>			
			</div>

			<div class="game_sub_title">♣ 배팅용어</div>
			<div id="tournament_event">
				<div id="tab">
					<div class="event_title" style="line-height:49px;">블라인드(Blinds)</div>
					<div style="float:left;line-height:17px;">블라인드란, 게임시작 전 지불해야 하는 기본금을 말합니다.<br>총 두명씩 시계방향으로 돌아가며 지불하게 됩니다.<br>
					예를 들어 50/100 블라인드에서 50은 스몰 블라인드, 100은 빅 블라인드라고 합니다.</div>
				</div>
				<div id="tab" style="padding:10px 0 10px 0;">
					<div class="event_title">버튼(Button)</div>
					<div style="float:left;">블라인드 위치를 결정하는 기준 자리, 버튼 왼쪽 두 자리가 블라인드가 됩니다.</div>
				</div>
				<div id="tab">
					<div class="event_title" style="line-height:17px;">홀 카드(Hole Card)<br>또는 핸드(Hand)</div>
					<div style="float:left;line-height:35px;">각 플레이어들이 받게 되는 2장의 카드를 말합니다.</div>
				</div>
				<div id="tab" style="padding:10px 0 10px 0;">
					<div class="event_title">프리플랍(Pre Flop)</div>
					<div style="float:left;">각자 2장의 카드를 받고 첫벌째 배팅라운드가 진행됩니다. 이 단계를 프리플랍이라고 합니다.</div>
				</div>
				<div id="tab">
					<div class="event_title" style="line-height:35px;">플랍(Flop)</div>
					<div style="float:left;line-height:17px;">프리플랍 이후 3장의 카드가 테이블 중앙에 모든 플레이어들이 볼 수 있는 상태로 열리며,<br>이 단계를 플랍이라고 합니다. 또한 3장의 카드들을 플랍카드라고 합니다.</div>
				</div>
				<div id="tab" style="padding:10px 0 10px 0;">>
					<div class="event_title" style="line-height:35px;">턴(Turn)</div>
					<div style="float:left;line-height:17px;">플랍 이후 네번째 카드 한장이 오픈 되는데 이 단계를 턴이라고 합니다.<br>또한 그 한장의 카드를 턴 카드라고 합니다.</div>
				</div>
				<div id="tab">
					<div class="event_title" style="line-height:35px;">리버(River)</div>
					<div style="float:left;line-height:17px;">마지막으로 5번째 카드 한장이 오픈되며 마지막 배팅라운드가 펼쳐집니다.<br>이 단계를 리버라고 합니다. 또한 마지막 한장의 카드를 리버 카드라고 합니다.</div>
				</div>
			</div>
</div>

</body>
</html>