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

<body>

<!---- headr ---------->
<c:import url="../module/top.jsp"></c:import>

<!-- <div id="hd">
	<div id="hd_wrapper">
		<div id="logo">
            <a href="index.html"><img src="img/logo.jpg" alt="원탑홀덤"></a>
        </div>
		<div id="nat">
			<a href="" onclick="{window.external.AddFavorite('http://naver.com','원탑홀덤')}">★즐겨찾기추가</a>
		</div>
		<div id="menu">
			<div class="top_menu">
				<a href="down.html">다운로드</a>
				<a href="guide.html">게임방법</a>
				<a href="tournament_info.html">토너먼트</a>
				<a href="faq.html">고객센터</a>
				<a href="shop.html" style="background:none;">머니샵</a>
			</div>
			<div class="tnb">
				<a href=""><img src="img/gbr_icon.jpg"> GBR</a>
				<a href=""><img src="img/chn_icon.jpg"> CHN</a>
				<a href=""><img src="img/jpn_icon.jpg"> JPN</a>
				<a href=""><img src="img/kor_icon.jpg"> KOR</a>
			</div>
		</div>
	</div>
</div> -->
<!---- headr ---------->


<div id="warp">

	<!---- content ---------->

	<div id="content">
		<div id="aside">
			<div class="tit">
				<div class="tt"><span class="big">게임방법</span><br>GAME GUIDE</div>
			</div>
			<div class="sub_menu">
				<ul>
					<li class="over"><a href="guide.html">· 게임방법</a></li>
				</ul>
			</div>
			<div><img src="resources/img/sub_down_btn.jpg"></div>
		</div>
		<div id="container">
			<div style="padding-bottom:10px;">
				<span id="container_title">게임방법</span>
				<div class="sub_nav"><img src="resources/img/home_icon.jpg"> HOME&nbsp;&nbsp;>&nbsp;&nbsp;게임방법&nbsp;&nbsp;>&nbsp;&nbsp;<b>게임방법</b></div>
			</div>
			<div style="text-align:center;"><img src="resources/img/guide_title.jpg"></div>
			<div style="font-size:10pt;font-weight:600;color:#474747;line-height:140%;padding:25px 0 25px 0;">텍사스 홀덤은 포커 게임의 종류 중 하나로, 해외에서 가장 대중적인 포커 게임입니다. 이 게임의 최종 목표는 <span style="color:#ff0000"><u>자신만의 카드(홀 카드) 2장</u></span>과 가운데 펼쳐질 <span style="color:#ff0000"><u>공유카드(커뮤니티 카드) 5장</u></span>을 조합하여 높은 패를 만드는 것입니다.<br>또한 기본 베팅 방식은 노리밋(No-Limit) 방식으로 베팅 액수에 제한이 없습니다. 따라서 자신이 원하는 금액만큼 베팅할 수 있으며 언제든지 올인 또한 가능합니다.</div>
			<img src="resources/img/guide_img.jpg">

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

			<div class="game_sub_title">♣ 족보</div>
			<div class="game_rule">
				<ul>
					<li>
						<div>로얄 스트레이트 플러쉬(Royal Straight Flush)<br><img src="resources/img/rule_img_1.png"><br>
						<span class="rule_small">5장의 무늬가 같고 10,J,Q,K,A인 경우</span></div>
					</li>
					<li>
						<div>스트레이트(Straight)<br><img src="resources/img/rule_img_2.png"><br>
						<span class="rule_small">무늬 상관 없이 5장의 숫자가 연속되는 경우</span></div>
					</li>
					<li>
						<div>스트레이트 플러쉬(Straight Flush)<br><img src="resources/img/rule_img_3.png"><br>
						<span class="rule_small">5장의 무늬가 같고, 연속되는 숫자일 경우</span></div>
					</li>
					<li>
						<div>트리플(Three of kind)<br><img src="resources/img/rule_img_4.png"><br>
						<span class="rule_small">3장의 카드가 같은 숫자일 경우</span></div>
					</li>
					<li>
						<div>포카드(Four of kind)<br><img src="resources/img/rule_img_5.png"><br>
						<span class="rule_small">4장의 카드가 같은 숫자일 경우</span></div>
					</li>
					<li>
						<div>투 페어(Two Pair)<br><img src="resources/img/rule_img_6.png"><br>
						<span class="rule_small">두 쌍의 같은 숫자가 있는 경우</span></div>
					</li>
					<li>
						<div>풀하우스(Full House)<br><img src="resources/img/rule_img_7.png"><br>
						<span class="rule_small">트리플과 원페어로 구성된 경우</span></div>
					</li>
					<li>
						<div>원 페어(One Pair)<br><img src="resources/img/rule_img_8.png"><br>
						<span class="rule_small">2장의 카드 숫자가 같은 경우</span></div>
					</li>
					<li>
						<div>플러쉬(Flush)<br><img src="resources/img/rule_img_9.png"><br>
						<span class="rule_small">카드 5장의 무늬가 같은 경우</span></div>
					</li>
					<li>
						<div>하이 카드(High Card)<br><img src="resources/img/rule_img_10.png"><br>
						<span class="rule_small">아무 연관이 없는 카드로 이루어 진 경우(높은 숫자순으로 승부)</span></div>
					</li>
				</ul>
			</div>
			<br>
		</div>
	</div>

	<!---- content ---------->


	<!---- footer ---------->

	<c:import url="../module/footer.jsp"></c:import>
	
	<!-- <div id="ft">
		<div style="float:left"><img src="img/bottom_logo.jpg"></div>
		<div class="txt">
		<a href="">이용약관</a><a href="">개인정보취급방침</a><br>
		원탑홀덤 대표 : 홍길동 &nbsp; 사업자번호 : 000-00-00000 &nbsp; 통신판매업 : 제2018-전주덕진-00000호<br>
		전북 전주시 덕진구 추탄로 48(덕진동2가) 이현빌딩 4층 &nbsp; 대표전화 063-273-8171<br>
		Copyright ⓒ 2018 ONETOP. All rights reserved.
		</div>
		<div style="float:right;padding-top:18px;">
			<table cellpadding=0 cellspacing=0 class="info">
				<tr>
					<td>제명</td>
					<td>원탑홀덤</td>
					<td>상호</td>
					<td>원탑게임즈</td>
				</tr>
				<tr>
					<td>이용등급</td>
					<td>청소년이용불가</td>
					<td>등급 분류번호</td>
					<td>00-00-000000-000</td>
				</tr>
				<tr>
					<td>제작년월일</td>
					<td>2018-01-01</td>
					<td>신고(등록)번호</td>
					<td>2018-000000호</td>
				</tr>
			</table>
		</div>
	</div> -->

	<!---- footer ---------->
</div>

</body>
</html>