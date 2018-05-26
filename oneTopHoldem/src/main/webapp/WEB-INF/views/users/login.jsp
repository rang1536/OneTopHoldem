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
<!---- headr ---------->


<div id="warp">
	<!---- content ---------->

	<div id="content">
		<div id="aside">
			<div class="tit">
				<div class="tt"><span class="big">멤버쉽</span><br>MEMBERSHIP</div>
			</div>
			<div class="sub_menu">
				<ul>
					<li class="over"><a href="login">· 로그인</a></li>
					<li><a href="join">· 회원가입</a></li>
				</ul>
			</div>
			<div><img src="resources/img/sub_down_btn.jpg"></div>
		</div>
		<div id="container">
			<div style="padding-bottom:10px;">
				<span id="container_title">로그인</span>
				<div class="sub_nav"><img src="resources/img/home_icon.jpg"> HOME&nbsp;&nbsp;>&nbsp;&nbsp;멤버쉽&nbsp;&nbsp;>&nbsp;&nbsp;<b>로그인</b></div>
			</div>
			
			<div style="padding-top:80px;">
				<div id="login" class="mb">

					<form name="login" action="/" onsubmit="return flogin_submit(this);" method="post">
					<fieldset id="login_fs">
						<legend>회원로그인</legend>
						<label for="login_id" class="login_id">아이디</label>
						<input type="text" name="mb_id" id="login_id" required class="frm_input required" size="20" maxLength="20">
						<label for="login_pw" class="login_pw">비밀번호</label>
						<input type="password" name="mb_password" id="login_pw" required class="frm_input required" size="20" maxLength="20">
						<input type="submit" value="로그인" class="btn_submit">
						<input type="checkbox" name="auto_login" id="login_auto_login">
						<label for="login_auto_login">보안로그인</label>
					</fieldset>

					<aside id="login_info">
						<p>
							아이디/비밀번호가 기억 안나실 때는 아이디/비밀번호 찾기를 이용하십시오.<br>
							아직 회원이 아니시라면 회원으로 가입 후 이용해 주십시오.
						</p>
						<div>
							<a href="password_lost.php" target="_blank" id="login_password_lost" class="btn02">아이디 비밀번호 찾기</a>
							<a href="join.php" class="btn01">회원 가입</a>
						</div>
					</aside>

					</form>
				</div>
				<div id="mark">이 정보 내용은 청소년 유해 매체물로서 정보 통신망 이용촉진 및 정보보호 등에 관한 법률 및 청소년 보호법의 규정에 의하여 만18세 미만의 청소년이 이용할 수 없습니다.</div>
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