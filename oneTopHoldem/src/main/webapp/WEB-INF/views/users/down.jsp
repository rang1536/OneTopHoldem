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
<c:import url="../module/top.jsp"></c:import>
<!---- headr ---------->
<!-- <div id="hd">
	<div id="hd_wrapper">
		<div id="logo">
            <a href="index.html"><img src="resources/img/logo.jpg" alt="원탑홀덤"></a>
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
				<a href=""><img src="resources/img/gbr_icon.jpg"> GBR</a>
				<a href=""><img src="resources/img/chn_icon.jpg"> CHN</a>
				<a href=""><img src="resources/img/jpn_icon.jpg"> JPN</a>
				<a href=""><img src="resources/img/kor_icon.jpg"> KOR</a>
			</div>
		</div>
	</div>
</div> -->
<!---- headr ---------->


<div id="warp">

	<!---- content ---------->

	<div id="content">
		<div id="aside">
			<section id="ol_before" class="ol2" style="background:#152e57;">
				<form name="foutlogin" action="down_login.html" onsubmit="return fhead_submit(this);" method="post" autocomplete="off">
				<fieldset>
					<div id="ol_auto">
						<input type="checkbox" name="auto_login" value="1" id="auto_login">
						<label for="auto_login" id="auto_login_label">보안로그인</label>
					</div>
					<label for="ol_id2" id="ol_idlabel">아이디</label>
					<input type="text" id="ol_id2" name="mb_id" required class="required" maxlength="20">
					<label for="ol_pw2" id="ol_pwlabel">비밀번호</label>
					<input type="password" name="mb_password" id="ol_pw2" required class="required" maxlength="20">
					<input type="submit" id="ol_submit2" value="로그인">
					<div id="ol_svc">
						<a href="join.html"><b>회원가입</b></a>|<a href="find.html" id="ol_password_lost">정보찾기</a>
					</div>
					
				</fieldset>
				</form>
			</section>

			<script>
			$omi = $('#ol_id2');
			$omp = $('#ol_pw2');
			$omp.css('display','inline-block').css('width',169);
			$omi_label = $('#ol_idlabel');
			$omi_label.addClass('ol_idlabel');
			$omp_label = $('#ol_pwlabel');
			$omp_label.addClass('ol_pwlabel');

			$(function() {
				$omi.focus(function() {
					$omi_label.css('visibility','hidden');
				});
				$omp.focus(function() {
					$omp_label.css('visibility','hidden');
				});
				$omi.blur(function() {
					$this = $(this);
					if($this.attr('id') == "ol_id" && $this.attr('value') == "") $omi_label.css('visibility','visible');
				});
				$omp.blur(function() {
					$this = $(this);
					if($this.attr('id') == "ol_pw" && $this.attr('value') == "") $omp_label.css('visibility','visible');
				});

				$("#auto_login").click(function(){
					if ($(this).is(":checked")) {
						if(!confirm("자동로그인을 사용하시면 다음부터 회원아이디와 비밀번호를 입력하실 필요가 없습니다.\n\n공공장소에서는 개인정보가 유출될 수 있으니 사용을 자제하여 주십시오.\n\n자동로그인을 사용하시겠습니까?"))
							return false;
					}
				});
			});

			function fhead_submit(f)
			{
				return true;
			}
			</script>

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
	<!-- <div id="ft">
		<div style="float:left"><img src="resources/img/bottom_logo.jpg"></div>
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