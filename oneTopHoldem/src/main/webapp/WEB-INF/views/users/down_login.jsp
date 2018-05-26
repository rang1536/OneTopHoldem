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
			<section id="ol_after" class="ol2" style="background:#152e57;">
				<header id="ol_after_hd2">
					<img src="img/cat_man.jpg">				
				</header>
				<ul id="ol_after_private">
					<li><strong>홍길동님</strong><br>환영합니다.!</li>
					<li>포인트<br><strong>123,124 P</strong></li>
				</ul>
				<footer id="ol_after_ft2">
					<a href="modify.html" id="ol_after_info">정보수정</a><br>
					<a href="index.html" id="ol_after_logout">로그아웃</a>
				</footer>
			</section>

			
			<div class="tit">
				<div class="tt"><span class="big">다운로드</span><br>TOURNAMENT GAME</div>
			</div>
			<div class="sub_menu">
				<ul>
					<li class="over"><a href="down.html">· 다운로드</a></li>
				</ul>
			</div>
			<div><img src="resources/img/sub_down_btn.jpg"></div>
		</div>
		<div id="container">
			<div style="padding-bottom:10px;">
				<span id="container_title">다운로드</span>
				<div class="sub_nav"><img src="resources/img/home_icon.jpg"> HOME&nbsp;&nbsp;>&nbsp;&nbsp;다운로드&nbsp;&nbsp;>&nbsp;&nbsp;<b>다운로드</b></div>
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