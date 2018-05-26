<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>원탑홀덤</title>
<link rel="stylesheet" href="css/default.css">
<script type="text/javascript" src="resources/js/yssor.slider.min.js"></script>
<script src="resources/js/jquery-3.2.1.min.js"></script> 
<script type="text/javascript" src="resources/js/jquery.FadeWideBgImg.js"></script> 
<script type="text/javascript"> 

(function($){ 

   jQuery(document).ready(function(){ 

      $('.slideshow').FadeWideBgImg({interval:2000}); 

   }); 

}(window.jQuery,window)); 

yssor_1_slider_init = function() {
            
	var yssor_1_options = {
		$AutoPlay: true,
		$SlideWidth: 264,
		$Cols: 4,
		$Align: 600,
		$ArrowNavigatorOptions: {
			$Class: $yssorArrowNavigator$
		},
		$BulletNavigatorOptions: {
			$Class: $yssorBulletNavigator$
		}
	};
            
	var yssor_1_slider = new $yssorSlider$("yssor_1", yssor_1_options);
            
	function ScaleSlider() {
		var refSize = yssor_1_slider.$Elmt.parentNode.clientWidth;
		if (refSize) {
			refSize = Math.min(refSize, 244);
			yssor_1_slider.$ScaleWidth(refSize);
		}
		else {
			window.setTimeout(ScaleSlider, 30);
		}
	}
};
</script>


</head>



<body>

<!---- headr ---------->
<c:import url="../module/top.jsp"></c:import>
<!---- headr ---------->

<div id="warp">
	<!---- content ---------->
	<div id="main_con">
		<div id="main_ban">
			<div class="notice">
				<div style="float:left;color:#fff000;font-weight:600;"><img src="resources/img/noti_icon.png">&nbsp;&nbsp;공지사항&nbsp;&nbsp;|&nbsp;&nbsp;</div>
				<div style="float:left;color:#fff;font-weight:600;">[점검안내] 2018/01/06 서버 점검을 실시합니다.</div>
				<div style="float:right;color:#989898;font-weight:600;">MORE <img src="resources/img/noti_more.png"></div>
			</div>
			<div class="roll_img">
				<div style="width:100%;">
					<ul class="slideshow">
						<li><img src="resources/img/main_ban3.jpg" alt="슬라이드 이미지"/></li>
						<li><img src="resources/img/main_ban2.jpg" alt="슬라이드 이미지"/></li>
						<li><img src="resources/img/main_ban1.jpg" alt="슬라이드 이미지"/></li>
					</ul> 
				</div> 
			</div>
		</div>
		<div id="game_box">
			<section id="ol_after" class="ol">
				<header id="ol_after_hd">
					<img src="resources/img/cat_man.jpg">				
				</header>
				<ul id="ol_after_private">
					<li><strong>홍길동님</strong> 환영합니다.!</li>
					<li>포인트 <strong>123,124 P</strong></li>
				</ul>
				<footer id="ol_after_ft">
					<a href="modify" id="ol_after_info">정보수정</a><br>
					<a href="index" id="ol_after_logout">로그아웃</a>
				</footer>
			</section>

			<div><img src="resources/img/game_down.png"></div>
			<div style="padding-top:20px;"><img src="resources/img/school_icon.png"></div>
			<div style="margin:-46px 0 0 60px;color:#fff;font-weight:600;line-height:21px;"><span style="color:#fff000;font-size:12pt;"><u>홀덤이 처음이세요?</u></span><br>초보자를 위한 게임가이드</div>
		</div>
	</div>

	<div id="roll">
		<div id="yssor_1" style="position:relative; margin: 0 auto; top: 0px; left: 0px; width:1120px; height:96px; overflow: hidden; visibility: hidden;">

			<div data-u="slides" style="cursor: default; position: relative; top: 0px; left:40px; width: 1040px; height:96px; overflow: hidden;">
				
				<div data-p="112.50" style="display: none;margin-left:-80px;">
					<a href="/"><img src="resources/img/roll_img1.jpg" width=244 height=86 style="padding:10px"></a>
				</div>
				<div data-p="112.50" style="display: none;margin-left:-80px;">
					<a href="/"><img src="resources/img/roll_img2.jpg" width=244 height=86 style="padding:10px"></a>
				</div>
				<div data-p="112.50" style="display: none;margin-left:-80px;">
					<a href="/"><img src="resources/img/roll_img3.jpg" width=244 height=86 style="padding:10px"></a>
				</div>
				<div data-p="112.50" style="display: none;margin-left:-80px;">
					<a href="/"><img src="resources/img/roll_img4.jpg" width=244 height=86 style="padding:10px"></a>
				</div>
				<div data-p="112.50" style="display: none;margin-left:-80px;">
					<a href="/"><img src="resources/img/roll_img5.jpg" width=244 height=86 style="padding:10px"></a>
				</div>
				<div data-p="112.50" style="display: none;margin-left:-80px;">
					<a href="/"><img src="resources/img/roll_img6.jpg" width=244 height=86 style="padding:10px"></a>
				</div>

			
			</div>
			<!-- Arrow Navigator -->
			<span data-u="arrowleft" class="yssora13l" style="top:0px;left:50%;margin-left:-560px;width:40px;height:50px;" data-autocenter="2"></span>
			<span data-u="arrowright" class="yssora13r" style="top:0px;left:50%;margin-left:520px;width:40px;height:50px;" data-autocenter="2"></span>
		</div>

		<script>
			yssor_1_slider_init();
		</script>
	</div>

	<div id="noti">
		<div id="schedule">
			<div class="title">토너먼트 일정</div>
			<div class="list">
				<ul>
					<li>01.04 09:30 <span class="point">9만 칩 + 1만 칩</span><br>
					[09시 30분] No리바이! No에드온! </li>
					<li>01.04 09:30 <span class="point">9만 칩 + 1만 칩</span><br>
					[09시 30분] No리바이! No에드온! </li>
					<li>01.04 09:30 <span class="point">9만 칩 + 1만 칩</span><br>
					[09시 30분] No리바이! No에드온! </li>
				</ul>
			</div>
		</div>
		<div id="tournament">
			<div class="title">토너먼트란?</div>
			<img src="resources/img/tournament.jpg">
			<div class="txt">토너먼트는 정해진 시간에 수백명이 동시에 동일한 칩을 가지고<br>
			게임에 참가하여, 최종 우스자 1명이 나올 때까지 진행되는<br>
			게임을 말합니다. 적은 참가비를 지불하고 수십~수백배의 상금을<br>
			받을 수 있다는 점이 큰 묘미 입니다.<br><br>
			<span class="btn1">토너먼트 용어 및 설명</span>
			<span class="btn2">게임방법 & 상금</span></div>
		</div>
		<div id="moneyShop"><a href="shop"><img src="img/moneyShop.jpg"></a></div>
	</div>

	<!---- content ---------->



	<!---- footer ---------->

	<c:import url="../module/footer.jsp"></c:import>

	<!---- footer ---------->
</div>


</body>
</html>