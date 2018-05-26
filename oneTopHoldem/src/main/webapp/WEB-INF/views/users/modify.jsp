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
					<li class="over"><a href="modify">· 회원정보수정</a></li>
				</ul>
			</div>
			<div><img src="resources/img/sub_down_btn.jpg"></div>
		</div>
		<div id="container">
			<div style="padding-bottom:10px;">
				<span id="container_title">회원정보수정</span>
				<div class="sub_nav"><img src="resources/img/home_icon.jpg"> HOME&nbsp;&nbsp;>&nbsp;&nbsp;멤버쉽&nbsp;&nbsp;>&nbsp;&nbsp;<b>회원정보수정</b></div>
			</div>
			
			<div style="padding-top:20px;">
				<div style="border:3px solid #dddddd;text-align:center;padding:10px;">
					<img src="resources/img/join_1_out.jpg"><img src="resources/img/join_bar.jpg">
					<img src="resources/img/join_2_over.jpg"><img src="resources/img/join_bar.jpg">
					<img src="resources/img/join_3_out.jpg">
				</div>
			</div>
			
			<div class="join_tt">회원정보수정 <span class="cm">&nbsp;|&nbsp;&nbsp;필수입력사항</span></div>

			<form id="fregisterform" name="fregisterform" action="modify" onsubmit="return fregisterform_submit(this);" method="post" enctype="multipart/form-data" autocomplete="off">
			<div class="tbl_frm01 tbl_wrap">
				<table>
				<tbody>
				<tr>
					<th scope="row"><label for="reg_mb_id">아이디</label></th>
					<td>
						<span class="frm_info">영문자, 숫자, _ 만 입력 가능. 최소 3자이상 입력하세요.</span>
						<input type="text" name="mb_id" value="" id="reg_mb_id" class="frm_input" minlength="3" maxlength="20">
						<span id="msg_mb_id"></span>
					</td>
				</tr>
				<tr>
					<th scope="row"><label for="reg_mb_password">비밀번호</label></th>
					<td><input type="password" name="mb_password" id="reg_mb_password" class="frm_input" minlength="3" maxlength="20"></td>
				</tr>
				<tr>
					<th scope="row"><label for="reg_mb_password_re">비밀번호 확인</label></th>
					<td><input type="password" name="mb_password_re" id="reg_mb_password_re" class="frm_input" minlength="3" maxlength="20"></td>
				</tr>
				<tr>
					<th scope="row"><label for="reg_mb_name">이름</label></th>
					<td><input type="text" id="reg_mb_name" name="mb_name" value="" class="frm_input" size="10"></td>
				</tr>
				<tr>
					<th scope="row"><label for="reg_mb_nick">닉네임</label></th>
					<td>
						<span class="frm_info">
							공백없이 한글,영문,숫자만 입력 가능 (한글2자, 영문4자 이상)<br>
							닉네임을 바꾸시면 앞으로 30일 이내에는 변경 할 수 없습니다.
						</span>
						<input type="hidden" name="mb_nick_default" value="">
						<input type="text" name="mb_nick" value="" id="reg_mb_nick" class="frm_input  nospace" size="10" maxlength="20">
						<span id="msg_mb_nick"></span>
					</td>
				</tr>

				<tr>
					<th scope="row"><label for="reg_mb_email">E-mail</label></th>
					<td><input type="text" name="mb_email" value="" id="reg_mb_email" class="frm_input email" size="70" maxlength="100"></td>
				</tr>
				<tr>
					<th scope="row"><label for="reg_mb_tel">전화번호</label></th>
					<td><input type="text" name="mb_tel" value="" id="reg_mb_tel" class="frm_input" maxlength="20"></td>
				</tr>
				<tr>
					<th scope="row"><label for="reg_mb_hp">휴대폰번호</label></th>
					<td><input type="text" name="mb_hp" value="" id="reg_mb_hp" class="frm_input" maxlength="20"></td>
				</tr>
				<tr>
					<th scope="row">주소</th>
					<td>
						<label for="reg_mb_zip" class="sound_only">우편번호</label>
						<input type="text" name="mb_zip" value="" id="reg_mb_zip" class="frm_input" size="5" maxlength="6">
						<button type="button" class="btn_frmline" onclick="win_zip('fregisterform', 'mb_zip', 'mb_addr1', 'mb_addr2', 'mb_addr3', 'mb_addr_jibeon');">주소 검색</button><br>
						<input type="text" name="mb_addr1" value="" id="reg_mb_addr1" class="frm_input frm_address" size="50">
						<label for="reg_mb_addr1">기본주소</label><br>
						<input type="text" name="mb_addr2" value="" id="reg_mb_addr2" class="frm_input frm_address" size="50">
						<label for="reg_mb_addr2">상세주소</label>
						<br>
						<input type="text" name="mb_addr3" value="" id="reg_mb_addr3" class="frm_input frm_address" size="50" readonly="readonly">
					</td>
				</tr>
				</tbody>
				</table>
			</div>

			<div class="btn_confirm">
				<input type="submit" class="myButton" value="✔ 수정완료">
			</div>
			</form>
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