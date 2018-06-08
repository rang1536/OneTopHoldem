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
$(document).ready(function(){
	var id = '${id}';
	var gold = '${userGold}'; 
	
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
})
function info_pop(url){

	var popupX = (window.screen.width / 2) - (570 / 2);
	var popupY= (window.screen.height /2) - (500 / 2);

	window.open(url, '원탑홀덤 토너먼트 정보', 'status=no, height=500, width=570, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
}

$(document).on('click','#ol_submit',function(){
	var loginId = $('#ol_id').val();
	var loginPassword = $('#ol_pw').val();
	
	if(loginId == null || loginId == ''){
		alert('아이디를 입력하세요');
		return;
	}
	if(loginPassword == null || loginPassword == ''){
		alert('비밀번호를 입력하세요');
		return;
	}
	
	$.ajax({
		url : 'userLogin',
		data : {'loginId':loginId ,'loginPassword':loginPassword},
		dataType : 'json',
		type : 'post',
		success : function(data){
			if(data.loginCheck == 'success'){
				$('#ol_before').css('display','none');
				
				$('#ol_after').find('#user_name').text('');
				$('#ol_after').find('#user_point').text('');
				$('#ol_after').find('#user_name').text(data.account.loginId);
				$('#ol_after').find('#user_point').text(data.account.gold);
				$('#ol_after').css('display','');
			}
		}
	})
});
</script>

<body>

<!---- headr ---------->
<c:import url="../module/top.jsp"></c:import>
<!---- headr ---------->


<div id="warp">

	<!---- content ---------->

	<div id="content">
		<div id="aside">
			<section id="ol_before" class="ol2" style="background:#152e57;">
				<form name="foutlogin" method="post" autocomplete="off">
					<fieldset>
						<div id="ol_auto">
							<!-- <input type="checkbox" name="auto_login" value="1" id="auto_login"> -->
							<label for="auto_login" id="auto_login_label">원탑홀덤 회원로그인</label>
						</div>
						<!-- <label for="ol_id" id="ol_idlabel">아이디</label> -->
						<input type="text" id="ol_id" name="mb_id" style="width:160px;" placeholder="아이디">
						<!-- <label for="ol_pw" id="ol_pwlabel">비밀번호</label> -->
						<input type="password" name="mb_password" id="ol_pw" style="width:160px;" placeholder="비밀번호">
						<input type="button" id="ol_submit" value="로그인" style="width:170px;">
						<div id="ol_svc">
							<a href="join"><b>회원가입</b></a>|<a href="#" id="ol_password_lost">정보찾기</a>
						</div>
						
					</fieldset>
				</form>
			</section>
			
			<section id="ol_after" class="ol2" style="background:#152e57;">
				<header id="ol_after_hd2">
					<img src="resources/img/cat_man.jpg">				
				</header>
				<ul id="ol_after_private">
					<li><strong id="user_name"></strong>님!</li>
					<li>골드 <strong id="user_point"></strong> 원</li>
				</ul>
				<footer id="ol_after_ft2">
					<a href="modify" id="ol_after_info">정보수정</a><br>
					<a href="downMenu?check=clSession" id="ol_after_logout">로그아웃</a>
				</footer>
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
					<li class="over"><a href="#">· 다운로드</a></li>
				</ul>
			</div>
			<div><a href="https://s3.ap-northeast-2.amazonaws.com/onetop/HoldemSetup.exe"><img src="resources/img/sub_down_btn.jpg"></a></div>
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