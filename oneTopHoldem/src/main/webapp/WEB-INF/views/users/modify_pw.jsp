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
<script src="resources/js/common.js"></script>
<script>
$(document).on('click','.myButton',function(){
	var nowPw = $('#nowPw').val();
	var newPw = $('#reg_mb_password').val(); 
	var newPwRe = $('#reg_mb_password_re').val();
	
	if(nowPw == null || nowPw == '') {
		alert('현재 비밀번호를 입력해주세요');
		return;
	}
	
	if(newPw == null || newPw == '') {
		alert('새 비밀번호를 입력해주세요');
		return;
	}
	
	if(newPwRe == null || newPwRe == '') {
		alert('새 비밀번호를 입력해주세요');
		return;
	}
	
	if(newPw != newPwRe){
		alert('새 비밀번호를 다시 확인해주세요');
		return;
	}
	
	$.ajax({
		url : 'modifyPassword',
		dataType : 'json',
		type : 'post',
		data : {'nowPw':nowPw, 'newPw':newPw},
		success : function(data){
			if(data.result == 'succ'){
				alert('비밀번호를 변경하였습니다.');
				location.href = 'modify';
			}else if(data.result == 'noAccount'){
				alert('현재 비밀번호가 일치하지 않습니다.\n개인보호 정책상 비밀번호를 보관하고 있지 않습니다\n비밀번호 변경은 고객센터로 문의 바랍니다')
				return;
			}else{
				alert('비밀번호 변경에 실패하였습니다.');
				return;
			}
		}
	})
})	

</script>
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
			<div><a href="https://s3.ap-northeast-2.amazonaws.com/onetop/HoldemSetup.exe"><img src="resources/img/sub_down_btn.jpg"></a></div>
		</div>
		<div id="container">
			<div style="padding-bottom:10px;">
				<span id="container_title">회원정보수정</span>
				<div class="sub_nav"><img src="resources/img/home_icon.jpg"> HOME&nbsp;&nbsp;>&nbsp;&nbsp;멤버쉽&nbsp;&nbsp;>&nbsp;&nbsp;<b>회원정보수정</b></div>
			</div>
			
			<div style="padding-top:20px;">
				<div class="mo_tab">
					<ul>
						<li><a href="modify" class="out">기본정보</a></li>
						<li><a href="modifyPw" class="over">비밀번호 관리</a></li>
						<!-- <li><a href="modifyLimit" class="out">일일한도</a></li> -->
					</ul>
				</div>
			</div>
			
			<div class="join_tt">비밀번호변경</div>

			<form id="fregisterform" name="fregisterform" method="post" enctype="multipart/form-data" autocomplete="off">
			<div class="tbl_frm01 tbl_wrap">
				<table>
				<tbody>			
				<tr>
					<th scope="row"><label for="reg_mb_email">현재 비밀번호</label></th>
					<td><input type="password" name="nowPw" id="nowPw" class="frm_input" minlength="3" maxlength="20"></td>
				</tr>
				<tr>
					<th scope="row"><label for="reg_mb_password">새 비밀번호</label></th>
					<td><input type="password" name="mb_password" id="reg_mb_password" class="frm_input" minlength="3" maxlength="20"></td>
				</tr>
				<tr>
					<th scope="row"><label for="reg_mb_password_re">비밀번호 확인</label></th>
					<td><input type="password" name="mb_password_re" id="reg_mb_password_re" class="frm_input" minlength="3" maxlength="20"></td>
				</tr>
				</tbody>
				</table>
			</div>

			<div class="btn_confirm">
				<ul>
					<li><input type="submit" class="myButton" value="✔ 저장"></li>
					<li><a href="/"  class="clButton">취소</a></li>
				</ul>
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