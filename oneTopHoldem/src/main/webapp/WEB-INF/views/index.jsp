<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>원탑홀덤</title>
<link rel="stylesheet" href="resources/css/default.css">
<script type="text/javascript" src="resources/js/yssor.slider.min.js"></script>
<script type="text/javascript" src="resources/js/jquery-3.2.1.min.js"></script> 
<script type="text/javascript" src="resources/js/jquery.FadeWideBgImg.js"></script> 
<script type="text/javascript"> 

(function($){ 

   jQuery(document).ready(function(){ 

      $('.slideshow').FadeWideBgImg({interval:2000}); 
	  var id = '${id}';
	  var gold = '${userGold}';
	  console.log('id : '+id+', gold : '+gold);
	  
	  if(id != null && id != ''){ //로그인상황
		  $('#ol_before').css('display','none');
	  
		  $('#ol_after').find('#user_name').text('');
		  $('#ol_after').find('#user_point').text('');
		  $('#ol_after').find('#user_name').text(id);
		  $('#ol_after').find('#user_point').text(gold);
		  
		  $('#ol_after').css('display','');
	  }else{ //로그인안된상황
		  $('#ol_after').css('display','none');
		  $('#ol_before').css('display','');
	  }
	  
	  setInterval(getNotice(), 60000);
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

function newWin(url) {
	window.open(url,'new_win','width=800,height=780,toolbars=no,menubars=no,scrollbars=no');
}

$(document).on('click','#ol_submit',function(){
	var loginId = $('#ol_id').val();
	var loginPassword = $('#ol_pw').val();
	var autoLogin = '';
	
	if(loginId == null || loginId == ''){
		alert('아이디를 입력하세요');
		return;
	}
	if(loginPassword == null || loginPassword == ''){
		alert('비밀번호를 입력하세요');
		return;
	}
	
	if($('#auto_login').prop("checked")){
		autoLogin = 'checked';
		console.log('체크됨')
	}
	
	$.ajax({
		url : 'userLogin',
		data : {'loginId':loginId ,'loginPassword':loginPassword,'autoLogin':autoLogin},
		dataType : 'json',
		type : 'post',
		success : function(data){
			if(data.loginCheck == 'success'){
				cookieId1 = '${cookie.cookieId.value}'
				c2 = '${cookie.remId.value}'
				c3 = '${cookieId.remId.value}'
				//console.log('cookieId1'+cookieId1)
				//console.log('c2'+c2)
				//console.log('c3'+c3)
				$('#ol_before').css('display','none');
				
				$('#ol_after').find('#user_name').text('');
				$('#ol_after').find('#user_point').text('');
				$('#ol_after').find('#user_name').text(data.account.loginId);
				$('#ol_after').find('#user_point').text(data.account.gold);
				$('#ol_after').css('display','');
			}else if(data.loginCheck == 'failPw'){
				alert('비밀번호가 일치 하지 않습니다');
				return;
			}else if(data.loginCheck == 'failId'){
				alert('아이디가 존재하지 않습니다');
				return;
			}
		}
	})
});

function getNotice(){
	$.ajax({
		url : 'getNotice',
		dataType : 'json',
		type : 'post',
		success : function(data){
			if(data.notice != null && data.notice != ''){
				var html = '[긴급공지]';
				html += ' '+data.notice;
				
				$('#notResult').empty();
				$('#notResult').text(html);
				//alert(html);
			}
			
		}
	})
}
</script>


</head>



<body>

<!---- headr ---------->
<c:import url="./module/top.jsp"></c:import>

<!---- headr ---------->


<div id="warp">

<!---- content ---------->
	<div id="main_con">
		<div id="main_ban">
			<div class="notice">
				<div style="float:left;color:#fff000;font-weight:600;"><img src="resources/img/noti_icon.png">&nbsp;&nbsp;공지사항&nbsp;&nbsp;|&nbsp;&nbsp;</div>
				<div id="notResult" style="float:left;color:#fff;font-weight:600;cursor:pointer;" onclick="location.href='noticeView'">[알림] 오늘도 저희 원탑홀덤을 이용해주셔서 감사합니다.</div>
				<div style="float:right;color:#989898;font-weight:600;cursor:pointer;"></div>
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
			<section id="ol_before" class="ol">
				<form name="foutlogin" method="post" autocomplete="off">
					<fieldset>
						<div id="ol_auto">
							<input type="checkbox" name="auto_login" value="1" id="auto_login">
							<label for="auto_login" id="auto_login_label">아이디저장</label>
						</div>
						<!-- <label for="ol_id" id="ol_idlabel">아이디</label> -->
						<input type="text" id="ol_id" name="mb_id" required class="required" maxlength="20" placeholder="아이디" value="${cookie.remId.value }">
						<!-- <label for="ol_pw" id="ol_pwlabel">비밀번호</label> -->
						<input type="password" name="mb_password" id="ol_pw" required class="required" maxlength="20" placeholder="비밀번호" value="${cookie.remPw.value }">
						<input type="button" id="ol_submit" value="로그인">
						<div id="ol_svc">
							<a href="join"><b>회원가입</b></a>|<a href="#" id="ol_password_lost">정보찾기</a>
						</div>
						
					</fieldset>
				</form>
			</section>
			
			<section id="ol_after" class="ol" style="display:none;">
				<header id="ol_after_hd">
					<img src="resources/img/cat_man.jpg">				
				</header>
				<ul id="ol_after_private">
					<li><strong id="user_name"></strong>님 <br/>환영합니다.!</li>
					<li>보유골드<br/> <strong id="user_point"></strong> 원</li>
				</ul>
				<footer id="ol_after_ft">
					<a href="modify" id="ol_after_info">정보수정</a><br>
					<a href="index?check=clSession" id="ol_after_logout">로그아웃</a>
				</footer>
			</section>
			
			<script>
			$omi = $('#ol_id');
			$omp = $('#ol_pw');
			$omp.css('display','inline-block').css('width',212);
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

			<div><a href="https://s3.ap-northeast-2.amazonaws.com/onetop/HoldemSetup.exe"><img src="resources/img/game_down.png"></a></div>
			<div style="padding-top:20px;"><img src="resources/img/school_icon.png"></div>
			<div style="margin:-46px 0 0 60px;color:#fff;font-weight:600;line-height:21px;"><a href="guideMenu"><span style="color:#fff000;font-size:12pt;"><u>홀덤이 처음이세요?</u></span><br><font style="color:#ffffff;">초보자를 위한 게임가이드</font></a></div>
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
			<div class="title" style="cursor:pointer;" onclick="location.href='tournamentMenu'">토너먼트 일정</div>
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
			<a href="tournamentGame"><span class="btn1">토너먼트 용어 및 설명</span></a>
			<a href="tournamentGuide"><span class="btn2">게임방법 & 상금</span></a></div>
		</div>
		<div id="moneyShop"><a href="moneyShop"><img src="resources/img/moneyShop.jpg"></a></div>
	</div>



	<div id="wrapper">
		<div style="float:left;width:223px;">
			<div class="facebook"><img src="resources/img/facebook_icon.jpg"></div>
		</div>
		<div id="tournament">
			<div class="title">토너먼트 소식</div>
			<img src="resources/img/news_icon.jpg">
			<div class="txt">
				<ul>
					<c:if test="${fn:length(tList) > 0 }">
						<c:forEach var="tList" items="${tList }" varStatus="i">
							<c:if test="${i.index < 3 }">
								<li>[${tList.startDate }] ${tList.title}! 티켓 ${tList.needTicket}장</li>
							</c:if>
						</c:forEach>
					</c:if>
					<c:if test="${fn:length(tList) eq 0 }">
						<li>[2018-01-23] 300억 빅토너 가는길! 15,000 티켓 (3장)</li>
						<li>[2018-01-23] 300억 빅토너 가는길! 15,000 티켓 (3장)</li>
						<li>[2018-01-23] 300억 빅토너 가는길! 15,000 티켓 (3장)</li>
					</c:if>
				</ul>
			</div>
		</div>
		<div id="glossary">
			<div class="title">홀덤용어</div>
			<ul>
				<li onclick="newWin('glossary#1');" style="cursor:pointer;">베팅(Betting)</li>
				<li onclick="newWin('glossary#1');" style="cursor:pointer;">레이즈(Raise)</li>
				<li onclick="newWin('glossary#1');" style="cursor:pointer;">체크(Check)</li>
				<li onclick="newWin('glossary#1');" style="cursor:pointer;">폴드(Fold)</li>
				<li onclick="newWin('glossary#1');" style="cursor:pointer;">올인(All in)</li>
				<li onclick="newWin('glossary#1');" style="cursor:pointer;">베팅용어</li>
			</ul>
		</div>
	</div>

<!---- content ---------->



<!---- footer ---------->

<c:import url="./module/footer.jsp"></c:import>

<!---- footer ---------->
</div>


</body>
</html>