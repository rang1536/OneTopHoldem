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

<style>
.pay_title {background:#32384b;color:#fff;font-size:13pt;font-weight:600;line-height:35px;padding-left:15px;}
.pay_cc {background:#717789;color:#fff;font-size:10pt;font-weight:600;line-height:25px;padding-left:15px;}
.pay_cc_con {padding:15px;border:1px solid #717789;height:105px;}
.pay_cc_con ul{list-style:none;padding:0;margin:0;}
.pay_cc_con ul li {float:left;}
.shop_bull {font-size:8px;color:#ffffff;background:#97a8cd;border:1px solid #6b7fa9;border-radius:3px;padding:1px 3px 1px 3px;}
.shop_bull2 {font-size:8px;color:#ffffff;background:ef5246;padding:1px 3px 1px 3px;}
.pay {background:#e7eaf0;border:1px solid #ccd1d9;padding:15px;}
.pay_money {margin-top:20px;background:#fff;border:1px solid #6b7fa9;padding:25px;text-align:center;font-size:12pt;font-weight:600;}
.pay_con {color:#0055fc;font-weight:600;font-size:10pt;padding:20px;text-align:center;}
.pay_btn {
	font-weight:bold;
	text-decoration:none;
	box-shadow:inset #ffffff 0px 2px 0px -1px,#d2d3d4 0px 1px 3px;
	o-box-shadow:inset #ffffff 0px 2px 0px -1px,#d2d3d4 0px 1px 3px;
	-moz-box-shadow:inset #ffffff 0px 2px 0px -1px,#d2d3d4 0px 1px 3px;
	-webkit-box-shadow:inset #ffffff 0px 2px 0px -1px,#d2d3d4 0px 1px 3px;
	background:#bfecff;
	background:-o-linear-gradient(90deg, #bfecff, #d4f2ff);
	background:-moz-linear-gradient( center top, #bfecff 5%, #d4f2ff 100% );
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #bfecff), color-stop(1, #d4f2ff) );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#bfecff', endColorstr='#d4f2ff');
	background:-webkit-linear-gradient(#bfecff, #d4f2ff);
	background:-ms-linear-gradient(#bfecff, #d4f2ff);
	background:linear-gradient(#bfecff, #d4f2ff);
	text-indent:0px;
	line-height:0px;
	-moz-border-radius:3px;
	-webkit-border-radius:3px;
	border-radius:3px;
	text-align:center;
	vertical-align:middle;
	display:inline-block;
	font-size:11pt;
	color:#395863;
	width:100px;
	height:0px;
	padding:13px;
	text-shadow:#ade6ff 0px 1px 0px;
	border-color:#59a9c6;
	border-width:1px;
	border-style:solid;
}

.pay_btn:active {
	box-shadow:inset #ffffff 0px 2px 0px -1px,#d2d3d4 0px 0 3px;
	o-box-shadow:inset #ffffff 0px 2px 0px -1px,#d2d3d4 0px 0 3px;
	-moz-box-shadow:inset #ffffff 0px 2px 0px -1px,#d2d3d4 0px 0 3px;
	-webkit-box-shadow:inset #ffffff 0px 2px 0px -1px,#d2d3d4 0px 0 3px;
	position:relative;
	top:1px
}

.pay_btn:hover {
	background:#d4f2ff;
	background:-o-linear-gradient(90deg, #d4f2ff, #bfecff);
	background:-moz-linear-gradient( center top, #d4f2ff 5%, #bfecff 100% );
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #d4f2ff), color-stop(1, #bfecff) );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#d4f2ff', endColorstr='#bfecff');
	background:-webkit-linear-gradient(#d4f2ff, #bfecff);
	background:-ms-linear-gradient(#d4f2ff, #bfecff);
	background:linear-gradient(#d4f2ff, #bfecff);
}

.pay_info {
	font-weight:bold;
	text-decoration:none;
	font-family:Arial;
	box-shadow:inset #fafafa 0px 5px 8px -1px;
	o-box-shadow:inset #fafafa 0px 5px 8px -1px;
	-moz-box-shadow:inset #fafafa 0px 5px 8px -1px;
	-webkit-box-shadow:inset #fafafa 0px 5px 8px -1px;
	background:#eeeeee;
	background:-o-linear-gradient(90deg, #eeeeee, #e1e1e1);
	background:-moz-linear-gradient( center top, #eeeeee 5%, #e1e1e1 100% );
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #eeeeee), color-stop(1, #e1e1e1) );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#eeeeee', endColorstr='#e1e1e1');
	background:-webkit-linear-gradient(#eeeeee, #e1e1e1);
	background:-ms-linear-gradient(#eeeeee, #e1e1e1);
	background:linear-gradient(#eeeeee, #e1e1e1);
	text-indent:0px;
	line-height:0px;
	-moz-border-radius:3px;
	-webkit-border-radius:3px;
	border-radius:3px;
	text-align:center;
	vertical-align:middle;
	display:inline-block;
	font-size:12px;
	color:#696969;
	height:0px;
	padding:13px;
	border-color:#e1e1e1;
	border-width:1px;
	border-style:solid;
}

.pay_info:active {
	position:relative;
	top:4px
}

.pay_info:hover {
	background:#e1e1e1;
	background:-o-linear-gradient(90deg, #e1e1e1, #eeeeee);
	background:-moz-linear-gradient( center top, #e1e1e1 5%, #eeeeee 100% );
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #e1e1e1), color-stop(1, #eeeeee) );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#e1e1e1', endColorstr='#eeeeee');
	background:-webkit-linear-gradient(#e1e1e1, #eeeeee);
	background:-ms-linear-gradient(#e1e1e1, #eeeeee);
	background:linear-gradient(#e1e1e1, #eeeeee);
}
</style>


<script>
function win(url){

	var popupX = (window.screen.width / 2) - (450 / 2);
	var popupY= (window.screen.height /2) - (600 / 2);

	window.open(url, '상품구매안내', 'status=no, height=600, width=450, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
}

$(document).on('click','#pay_btn',function(){
	alert('죄송합니다. 결제 관련 모듈은 현재 적용전입니다. \n 자세한 내용은 고객센터 1899-8172로 문의바랍니다')
})
</script>

</head>


<body>

<div class="pay_title">상품구매</div>
<div style="padding:15px;">
	<div class="pay_cc">캐릭터구매</div>
	<div class="pay_cc_con">
		<ul>
			<li><img src="resources/img/shop_img2.jpg"></li>
			<li style="padding:30px 0 0 25px;"><img src="resources/img/shop_icon.jpg"> <b>10억칩</b><br><span class="blue"><span class="shop_bull2">\</span> 100,000원</span></li>
		</ul>
	</div>

	<div style="font-size:10pt;padding-top:20px;height:30px;font-weight:600;"><span class="shop_bull">▶</span> 결제방식선택</div>
	<div class="pay">
		<div><input type="radio" name="pay_type" value="휴대폰"> 휴대폰 &nbsp; &nbsp; <input type="radio" name="pay_type" value="계좌이체"> 계좌이체</div>
		<div class="pay_money">상품가격 : <span style="color:#ff0000">100,000원</span></div>
	</div>
	<div style="padding:10px 0 10px 0;">* 구매 후 7일이 경과하였거나 사용했을 경우 청약철회가 불가능 합니다.<br>&nbsp;&nbsp;&nbsp;
	(유료서비스 약관 청약철회 규정)</div>
	<div><a href="javascript:win('shopBuyInfo');" class="pay_info" style="width:100px;">규정안내 보기 ></a> <a href="javascript:win('shopBuyAttend');" class="pay_info" style="width:150px;">구매 전 주의사항 보기 ></a></div>
	<div class="pay_con">100,000원을 바로 결제하여 구매하시겠습니까?</div>
	<div style="text-align:center;"><input type="button" value="✔ 구매" id="pay_btn" class="pay_btn"></div>

	<!---- footer ---------->
</div>

</body>
</html>