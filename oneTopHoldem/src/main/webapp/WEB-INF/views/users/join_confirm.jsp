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
					<li><a href="login">· 로그인</a></li>
					<li class="over"><a href="join">· 회원가입</a></li>
				</ul>
			</div>
			<div><img src="resources/img/sub_down_btn.jpg"></div>
		</div>
		<div id="container">
			<div style="padding-bottom:10px;">
				<span id="container_title">회원가입</span>
				<div class="sub_nav"><img src="resources/img/home_icon.jpg"> HOME&nbsp;&nbsp;>&nbsp;&nbsp;멤버쉽&nbsp;&nbsp;>&nbsp;&nbsp;<b>회원가입</b></div>
			</div>
			
			<div style="padding-top:20px;">
				<div style="border:3px solid #dddddd;text-align:center;padding:10px;">
					<img src="resources/img/join_1_out.jpg"><img src="resources/img/join_bar.jpg">
					<img src="resources/img/join_2_out.jpg"><img src="resources/img/join_bar.jpg">
					<img src="resources/img/join_3_over.jpg">
				</div>
			</div>
			
			<div class="join_tt">회원가입완료 <span class="cm">&nbsp;|&nbsp;&nbsp;원탑홀덤에 오신것을 환영합니다.</span></div>

			<div id="reg_result" class="mbskin">

				<p>
					<strong>${name}</strong>님의 회원가입을 진심으로 축하합니다.<br>
				</p>

				<div id="result_email">
					<span>아이디</span>
					<strong>${loginId}</strong><br>
					<span>이메일 주소</span>
					<strong>${email }</strong>
				</div>
				<p>
					이메일 주소를 잘못 입력하셨다면, 사이트 관리자에게 문의해주시기 바랍니다.
				</p>

				<p>
					회원님의 비밀번호는 아무도 알 수 없는 암호화 코드로 저장되므로 안심하셔도 좋습니다.<br>
					아이디, 비밀번호 분실시에는 회원가입시 입력하신 이메일 주소를 이용하여 찾을 수 있습니다.
				</p>

				<p>
					회원 탈퇴는 언제든지 가능하며 일정기간이 지난 후, 회원님의 정보는 삭제하고 있습니다.<br>
					감사합니다.
				</p>
			</div>

			<div class="btn_confirm">
				<a href="index" class="myButton">메인으로</a>
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