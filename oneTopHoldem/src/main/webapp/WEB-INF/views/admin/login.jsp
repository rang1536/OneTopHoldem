<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<title>ONE TOP HOLD'EM</title>
	
	<link href="resources/img/favicon.png" rel="shortcut icon" />
	<script src="resources/vendor/jquery/jquery.min.js"></script>
	<link href="resources/css/common.css" rel="stylesheet" type="text/css">
	<link href="resources/css/layout.css" rel="stylesheet" type="text/css">
	<link href="resources/css/contents.css" rel="stylesheet" type="text/css">
	<link href="resources/css/menust.css" rel="stylesheet" type="text/css">
	
	<style>
		.login_btn{
		width:112px; 
		height:90px; 
		background-color:#6e5923; 
		color:#fff; 
		font-size:15px; 
		text-align:center; 
		line-height:90px; 
		float:right;
		}
	</style>
	
	<script>
	$(document).ready(function(){
		var loginCheck = '${loginCheck}';
		if(loginCheck == 'failId'){
			alert('해당 계정이 존재하지 않습니다!!');
			$('#id').val('');
			$('#id').focus();
		}else if(loginCheck == 'failPw'){
			alert('비밀번호가 다릅니다!!');
			$('#pw').val('');
			$('#id').focus();
		}
	})
	
	function loginAjax(){
		var id= $('#id').val();
		var pw= $('#pw').val();
		alert('id : '+id+' pw : '+pw);
		if(id == '' || id==null){
			alert('아이디를 입력하세요');
			$('#id').focus();
			return;
		}else if(pw == '' || pw==null){
			alert('비밀번호를 입력하세요');
			$('#pw').focus();
			return;
		}
		
		$('#userForm').submit();
	} 
	</script>
</head>
<body>

<!--비주얼st -->
<div id="subv_img_mem"></div>
<!--비주얼end -->

<!--본문내용시작 -->

<div class="sub_contain">
	<!--타이틀멘트 st -->
	<div class="sub_titment">
		<ul>
			<li class="main_titmm">로그인</li>
			<li class="sub_ttment">원-탑 홀덤 관리자 페이지 <strong>OneTop Hold'em</strong></li>
			<li class="mb_30"><img src="resources/img/inc/line_subtt.jpg" width="1" height="45"></li>
		</ul>
	</div>
	<!--타이틀멘트 end -->

	<!--로그인틀 st -->
	<div id="login_tle">
		<!--로그인폼 st -->
		<form action="adLogin" method="post" id="userForm">
			<input type="hidden" name="path" value="${path }"/>
			<div class="loginformstle">
				<ul class="lo_forms">
					<li class="mb_10"><input name="id" id="id" type="text" placeholder="아이디" /></li>
					<li><input name="pw" type="password" id="pw" placeholder="패스워드" /></li>
				</ul>
				<ul class="lo_btn">
					<li>
						<input type="button" value="로그인" class="login_btn" onclick="loginAjax();" />
					</li>
				</ul>
			</div>
		</form>
		<!--로그인폼end -->

		<!--회원가입btn,아이디비번찾기btn st -->
		 <div class="joinandidpwtle">
			<!--회원가입 바로가기 st
			<div class="joinviewtle">
				<ul class="join_menttle">
					<li class="join_titment">아직 회원이 아니신가요?</li>
					<li class="join_ment">지금 바로 회원가입하세요.&nbsp;&nbsp;&nbsp;우측 버튼 클릭!!</li>
			  	</ul>
			  
			  	<ul class="join_btn">
			  		<li><a href="addUser">회원가입</a></li>
			  	</ul>
			</div> -->
		 	<!--회원가입 바로가기 end --> 

			<!--아이디비번찾기바로기기 st -->
			<!-- <div class="id_pw_viewtle">
				<ul class="idpw_menttle">
					<li class="idpw_titment">아이디와 비밀번호를 잊으셨나요? </li>
					<li class="idpw_ment">
						가입시 등록된 핸드폰번호로 아이디및 비밀번호를<br/>찾으실 수 있습니다.
					</li>
				</ul>
				<ul class="idpw_btn">
					<li><a href="findPass">아이디/비번찾기</a></li>
				</ul>   
			</div> -->
			<!--아이디비번찾기바로기기 end -->
		</div>
		<!--회원가입btn,아이디비번찾기btn end -->
	</div>
	<!--로그인틀 end -->
</div>
<!--본문내용끝 -->

</body>
</html>