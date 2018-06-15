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

<link rel="stylesheet" type="text/css" href="resources/css/slideControl.css" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.1/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/jquery.slideControl.js"></script>

<script type="text/javascript">
$(document).ready(function() {
	$('.slideControl').slideControl();
	prettyPrint();
});

$(document).ready(function() {
	$('.slideControl2').slideControl2();
	prettyPrint();
});

$(document).on('click','#subBtn',function(){
	var chip = $('.slideControl2').val();
	
	if(confirm(chip+' 칩으로 설정하시겠습니까?')){
		$.ajax({
			url : 'setChipLimit',
			data : {'chip':chip},
			dataType : 'json',
			type : 'post',
			success : function(data){
				if(data.result == 'succ'){
					alert('일일게임한도 금액 제한액을 저장하였습니다');
					return;
				}else{
					alert('일일게임한도 금액 제한액 설정에 실패하였습니다. \n 자세한 내용은 고객센터로 문의바랍니다 ');
					return;
				}
			}
		})
	}
})

$(document).on('click','#subBtn2',function(){
	alert('일일 구매한도는 10만원 고정입니다.');
}
</script>

<script type="text/javascript" src="resources/js/prettify.js"></script> 


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
						<li><a href="modifyPw" class="out">비밀번호 관리</a></li>
						<li><a href="modifyLimit" class="over">일일한도</a></li>
					</ul>
				</div>
			</div>
			
			<div class="join_tt">일일한도</div>


			<div class="tbl_frm01 tbl_wrap">
				<div style="float:left;width:50%;">
					<div style="padding:20px;border:1px solid #888888;text-align:center;height:200px;">
						<div style="height:40px;font-size:14pt;color:#0084ff;text-align:left;">일일 구매한도 계획하기</div>
						<div style="height:25px;">계획금액</div>
						<form id="fregisterform" name="fregisterform" method="post" enctype="multipart/form-data" autocomplete="off">
						<div style="position:absolute;margin:10px 0 0 250px">원</div>
						<div style="height:50px">
							<input type="text" name="1" value="100000" class="slideControl slideControlInput" maxlength="30" readonly/>
						</div>
						<div style="float:left;">1만원</div>
						<div style="float:right;">10만원</div>
						<input type="button" class="myButton" value="✔ 저장" style="margin-top:25px;" id="subBtn2">
						</form>
					</div>
				</div>
				<div style="float:left;width:50%;">
					<div style="padding:20px;border:1px solid #888888;border-left:none;text-align:center;height:200px;">
						<div style="height:40px;font-size:14pt;color:#0084ff;text-align:left;">일일 게임한도 금액 제한 설정</div>
						<div style="height:25px;">계획금액</div>
						<form id="fregisterform" name="fregisterform" method="post" enctype="multipart/form-data" autocomplete="off">
						<div style="position:absolute;margin:10px 0 0 250px">칩</div>
						<div style="height:50px">
							<input type="text" name="2" value="10000000000" class="slideControl2 slideControlInput" maxlength="30" />
						</div>
						<div style="float:left;">1억</div>
						<div style="float:right;">10억</div>
						<input type="button" class="myButton" value="✔ 저장" style="margin-top:25px;" id="subBtn">
						</form>
					</div>
				</div>
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