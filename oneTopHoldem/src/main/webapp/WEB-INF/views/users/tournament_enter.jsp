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
			<div><a href="https://s3.ap-northeast-2.amazonaws.com/onetop/HoldemSetup.exe"><img src="resources/img/sub_down_btn.jpg"></a></div>
		</div>
		<div id="container">
			<div style="padding-bottom:30px;">
				<span id="container_title">토너먼트 참가방법</span>
				<div class="sub_nav"><img src="resources/img/home_icon.jpg"> HOME&nbsp;&nbsp;>&nbsp;&nbsp;토너먼트&nbsp;&nbsp;>&nbsp;&nbsp;<b>토너먼트 참가방법</b></div>
			</div>
			

			<div style="padding:20px;border:2px solid #385d8a;border-radius:15px;font-size:11pt;">1. 토너먼트 탭을 누르고 접수중 버튼을 누릅니다.</div>
			<div style="padding:15px 0 25px 0;"><img src="resources/img/tournament_enter1.png" width=100%></div>
			<div style="padding:20px;border:2px solid #385d8a;border-radius:15px;font-size:11pt;">2. 토너먼트의 시간, 조건 등을 확인하고 참가신청 버튼을 누릅니다.</div>
			<div style="padding:15px 0 25px 0;"><img src="resources/img/tournament_enter1.png" width=100%></div>
			<div style="padding:20px;border:2px solid #385d8a;border-radius:15px;font-size:11pt;">3. 참가신청 방식을 선택해서 확인 버튼을 누르면 토너먼트 참가신청이 완료됩니다.<br>
			&nbsp;&nbsp;&nbsp;&nbsp;*더블 바이인은 경기 방식에 따라 선택할 수 없을 수도 있습니다.</div>
			<div style="padding:15px 0 25px 0;"><img src="resources/img/tournament_enter1.png" width=100%></div>
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