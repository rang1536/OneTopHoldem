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

</head>

s
<body>

<div class="pay_title">상품구매 규정안내</div>
<div style="padding:15px;height:450px;overflow-y:auto;">
<b>제1조 (목적)</b><br>
이 이용약관(이하 “약관”이라 합니다)은 원탑게임즈(이하 “회사”라 합니다)이 제공하는 원탑홀덤에 부수된 제반서비스 중 유료서비스의 이용과 관련하여 회사와 회원과의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.<br><br>

<b>제2조 (정의)</b><br>
이 약관에서 사용하는 용어의 정의는 다음과 같습니다. 
1.	 “회원제서비스”라 함은 원탑게임즈 서비스를 월 또는 기간을 한정하여 이용할 수 있는 유료서비스를 의미합니다.<br>
2.	“정액제서비스라” 함은 회원제서비스 중 매월 또는 매 기간 이용료에 대해 자동결제를 이용하는 서비스를 의미합니다.<br><br>

<b>제3조 (신원정보 등의 제공)</b><br>
회사는 이 약관의 내용, 상호, 대표자 성명, 전화번호, 모사전송번호, 사업자등록번호, 통신판매업 신고번호, 고객센터 등을 회원이 쉽게 알 수 있도록 온라인 서비스초기화면에 게시합니다. 다만, 약관은 회원이 연결화면을 통하여 볼 수 있도록 할 수 있습니다.<br><br>

<b>제4조 (약관의 게시 등)</b><br>
1.	회사는 이 약관을 회원이 그 전부를 인쇄할 수 있고 확인할 수 있도록 기술적 조치를 취합니다.<br>
2.	2. 회사는 회원이 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 청약철회 등과 같은 중요한 내용을 회원이 쉽게 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등을 제공합니다.<br><br>

<b>제5조 (약관의 개정 등)</b><br>
1.	회사는 온라인디지털콘텐츠산업발전법, 전자상거래등에서의소비자보호에관한법률, 약관의규제에관한법률 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.<br>
2.	회사가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 제1항의 방식에 따라 그 개정약관의 적용일자 30일 전부터 적용일자 전일까지 공지합니다. 다만, 회원에게 불리한 약관의 개정의 경우에는 공지 외에 일정기간 전자우편, 쪽지, 로그인시 동의창 등의 전자적 수단을 통해 따로 명확히 통지하도록 합니다.<br>
3.	회사가 전항에 따라 개정약관을 공지 또는 통지하면서 회원에게 30일 기간 내에 의사표시를 하지 않으면 의사표시가 표명된 것으로 본다는 뜻을 명확하게 공지 또는 통지하였음에도 회원이 명시적으로 거부의 의사표시를 하지 아니한 경우 회원이 개정약관에 동의한 것으로 봅니다.<br>
4.	회원이 개정약관의 적용에 동의하지 않는 경우 회사는 개정 약관의 내용을 적용할 수 없으며, 이 경우 회원은 이용계약을 해지할 수 있습니다. 다만, 기존 약관을 적용할 수 없는 특별한 사정이 있는 경우에는 회사는 이용계약을 해지할 수 있습니다.
5.	회원은 전항에 따른 이용계약의 해지로 손해가 발생한 경우 회사에 이에 대한 배상을 청구할 수 있습니다.<br><br>

<b>제6조 (약관의 해석)</b><br>
이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 온라인디지털콘텐츠산업발전법, 전자상거래등에서의소비자보호에관한법률, 약관의규제에관한법률, 정보통신부장관이 정하는 디지털콘텐츠회원보호지침, 기타 관계법령, 원탑게임즈 이용약관 또는 상관례에 따릅니다.<br><br>

<b>제7조 (회원에 대한 통지)</b><br>
1.	회사가 회원에 대한 통지를 하는 경우 본 약관에 별도 규정이 없는 한 회원이 지정한 전자우편주소 또는 서비스 내 전자메모 등으로 할 수 있습니다.<br>
2.	회사는 회원 전체에 대한 통지의 경우 7일 이상 회사의 게시판에 게시함으로써 제1항의 통지에 갈음할 수 있습니다. 다만, 회원 본인의 거래와 관련하여 중대한 영향을 미치는 사항에 대하여는 제1항의 통지를 합니다.<br><br>

<b>제8조 (유료서비스의 내용 등의 게시)</b><br>
1.	회사는 다음 사항을 해당 유료서비스의 이용초기화면이나 그 포장, FAQ 등에 회원이 알기 쉽게 표시합니다. <br>
o	① 유료서비스의 명칭 또는 제호<br>
o	② 유료서비스 제작자의 성명(법인인 경우에는 법인의 명칭), 주소, 전화번호<br>
o	③ 유료서비스의 내용, 이용방법, 이용료 기타 이용조건<br>
2.	회사의 유료서비스의 이용가능기기 및 이용에 필요한 최소한의 기술사양은 권장사양정보에 따릅니다.<br><br>

<b>제9조 (이용계약의 성립 등)</b><br>
1.	회원은 회사가 제공하는 다음 또는 이와 유사한 절차에 의하여 이용신청을 합니다. 회사는 계약 체결 전에 각 호의 사항에 관하여 회원이 정확하게 이해하고 실수 또는 착오 없이 거래할 수 있도록 정보를 제공합니다. <br>
o	① 유료서비스 목록의 열람 및 선택<br>
o	② 결제방법의 선택 및 결제정보의 입력<br>
o	③ 유료서비스의 이용신청에 관한 확인 또는 회사의 확인에 대한 동의<br>
2.	회사는 회원의 이용신청이 다음 각 호에 해당하는 경우에는 승낙하지 않거나 승낙을 유보할 수 있습니다. <br>
o	① 실명이 아니거나 타인의 명의를 이용한 경우<br>
o	② 허위의 정보를 기재하거나, 회사가 제시하는 내용을 기재하지 않은 경우<br>
o	③ 미성년자가 청소년보호법에 의해서 이용이 금지되는 유료서비스를 이용하고자 하는 경우<br>
o	④ 서비스 관련 설비의 여유가 없거나, 기술상 또는 업무상 문제가 있는 경우<br>
3.	이용계약의 성립시기는 결제완료 또는 가입완료를 신청절차 상에서 표시한 시점으로 합니다.<br>
4.	회원이 유료서비스를 이용하기 위해서는 본 약관에 동의 후 각 서비스에 따른 이용조건에 따라 이용요금을 지급하여야 합니다.<br>
5.	유료서비스는 결제를 이용하여 1회성으로 구입할 수 있는 서비스(아이템 등)와 회원제서비스로 나뉘며, 그 종류 및 방식은 회사의 정책에 따라 추가, 삭제될 수 있습니다.<br>
6.	회사는 이용 신청하는 회원제서비스의 종류 및 이용조건에 따라 이용시간, 이용횟수, 서비스 메뉴 등을 세분하여 이용에 차등을 둘 수 있습니다.<br>
7.	회사는 회원에 대하여 게임산업발전에관한법률 및 청소년보호법 등에 따른 등급 및 연령 준수를 위해 이용제한이나 등급별 제한을 할 수 있습니다.<br><br>

<b>제10조 (미성년자 이용계약에 관한 특칙)</b><br>
회사는 만 20세 미만의 미성년회원이 유료서비스를 이용하고자 하는 경우에 부모 등 법정 대리인의 동의를 얻거나, 계약체결 후 추인을 얻지 않으면 미성년자 본인 또는 법정대리인이 그 계약을 취소할 수 있다는 내용을 계약체결 전에 고지하는 조치를 취합니다.<br><br>

<b>제11조 (지급방법)</b><br>
1.	유료서비스의 이용에 대한 대금지급방법은 다음 각 호의 방법 중 가능한 방법으로 할 수 있습니다. 다만, 회사는 회원의 지급방법에 대하여 어떠한 명목의 수수료도 추가하여 징수하지 않습니다. <br>
o	① 폰뱅킹, 인터넷뱅킹, 메일 뱅킹 등의 각종 계좌이체<br>
o	② 선불카드, 직불카드, 신용카드 등의 각종 카드결제<br>
o	③ 온라인무통장입금<br>
o	④ 전자화폐에 의한 결제<br>
o	⑤ 마일리지 등 회사가 지급한 포인트에 의한 결제<br>
o	⑥ 회사와 계약을 맺었거나 회사가 인정한 상품권에 의한 결제<br>
o	⑦ 전화 또는 휴대전화를 이용한 결제<br>
o	⑧ 기타 전자적 지급방법에 의한 대금지급 등<br>
2.	회원제서비스 중 정액제서비스의 경우는 매월 자동결제를 원칙으로 합니다. 신청 시 명시된 자동결제일에 회원이 지정한 결제수단을 통한 정상결제가 이루어지지 않을 경우, 정액제서비스는 자동 중단됩니다.<br>
3.	회사의 정책 및 제1항의 결제업체(이동통신사, 카드사 등)의 기준에 따라 회원 당 월 누적 결제액 및 충전한도가 제한될 수 있습니다. 해당 기준을 초과한 경우 유료서비스의 추가 이용은 불가능할 수 있습니다.<br>
4.	회사는 회원이 최종이용일로부터 6개월간 서비스를 이용하지 않을 경우, 자동결제를 중단하고 서비스 이용을 제한할 수 있습니다. 이 경우 연속적 사용을 전제로 한 사이버자산 등의 혜택은 소멸될 수 있습니다.<br><br>

<b>제12조 (유료서비스의 제공 및 중단)</b><br>
1.	회사는 원탑게임즈 이용약관 제12조에 따라 서비스를 제공합니다.<br>
2.	사업종목의 전환, 사업의 포기, 업체 간의 통합 등의 이유로 유료서비스를 제공할 수 없게 되는 경우에는 회사는 제7조(회원에 대한 통지)에 정한 방법으로 회원에게 통지하고 당초 회사에서 제시한 조건에 따라 회원에게 보상합니다.<br><br> 

<b>제13조 (서비스의 변경)</b><br>
유료서비스에 대한 변경은 원탑게임즈 이용약관 제13조를 준용합니다. 다만, 변경된 내용이 중대하거나 회원에게 불리한 경우에는 회사가 해당 유료 서비스를 제공받는 회원에게 제7조(회원에 대한 통지)에 정한 방법으로 통지합니다. 이때, 회사는 동의를 거절한 회원에 대하여는 변경 전 서비스를 제공합니다. 다만, 그러한 서비스 제공이 불가능할 경우 해당 서비스의 제공을 중지하거나 계약을 해지할 수 있습니다. 이 경우 환불 등은 제15조에 따라 진행됩니다.<br><br>

<b>제14조 (회원의 청약철회와 계약해제ㆍ해지)</b><br>
1.	회사의 유료서비스(아바타, 아이템, 회원제서비스 등)는 청약철회가 가능한 컨텐츠와 청약철회가 제한되는 컨텐츠로 구분되어 제공되며, 이러한 내용은 회원이 유료 컨텐츠를 구매할 시 고지 합니다. 단, 청약철회가 가능한 유료컨텐츠를 구매한 회원은 구매 시부터 7일 이내에 청약철회를 할 수 있습니다. 단, 시용상품을 제공한 경우와 한시적 또는 일부 이용 등의 방법을 제공한 경우는 청약철회 대상 에서 제외가 되며, 청약/철회가 불가능한 서비스에 대하여는 운영정책을 통하여 별도 고지 할 수 있습니다.<br>
2.	회원은 다음 각 호의 사유가 있을 때 이용계약을 해지 또는 해제할 수 있습니다. <br>
o	① 유료서비스의 하자를 회사가 보완, 수정할 수 없는 경우 유료서비스를 공급받은 날로부터 1개월 이내<br>
o	② 유료서비스이용 회원이 본 약관 또는 게임게임즈 이용약관 변경에 동의하지 않아 회원탈퇴 또는 유료서비스 이용계약을 해지하는 경우<br>
3.	제2항의 계약해제ㆍ해지는 회원이 전화, 전자우편 등으로 회사에 그 의사를 표시한 때에 효력이 발생합니다.<br>
4.	회사는 제3항에 따라 회원이 표시한 계약해제ㆍ해지의 의사표시를 수신한 후 지체 없이 이러한 사실을 회원에게 회신합니다.<br>
5.	회원은 제2항1호의 사유로 계약해제ㆍ해지의 의사표시를 하기 전에 상당한 기간을 정하여 서비스이용의 하자에 대한 치유를 요구할 수 있습니다. 다만, 회사가 판단해서 하자의 치유가 불가능하다고 판단되는 경우에는 즉시 그 사실을 이용자에게 통지하고 이용계약을 해제, 해지할 수 있습니다.<br>
6.	회원이 정액제서비스를 해지하고자 하는 경우는 제2항을 제외하고는 해지예약을 신청하여야 하며, 해당 해지예약의 신청은 해당월 서비스 종료일에 적용됩니다.<br>
7.	"회원"은 유료서비스의 내용이 표시-광고 내용과 다르거나 계약내용과 다르게 이행된 경우에는 구매일 또는 유료서비스 이용 가능일 부터 3월 이내, 그 사실을 안 날 또는 알 수 있었던 날부터 30일 이내에 청약철회를 할 수 있습니다.<br>
8.	"회원"은 구두 또는 서면(전자문서 포함), 전자우편으로 청약철회를 할 수 있습니다.<br><br>

<b>제15조 (회원의 계약해제ㆍ해지의 효과)</b><br>
1.	회사는 회원에게 계약해제ㆍ해지의 의사표시에 대하여 회신한 날로부터 3영업일 이내에 대금의 결제와 동일한 방법으로 이를 환급하여야 하며, 동일한 방법으로 환불이 불가능할 때에는 이를 사전에 고지하여야 합니다. 단 수납확인이 필요한 결제수단의 경우에는 수납확인일로부터 3영업일 이내에 이를 환급하도록 합니다.<br>
2.	회사가 제1항에 따라 환급할 경우에 회원이 유료서비스이용으로부터 얻은 이익에 해당하는 금액을 공제하고 환급할 수 있습니다.<br>
3.	회사는 위 대금을 환급함에 있어서 회원이 신용카드 또는 전자화폐 등의 결제수단으로 재화 등의 대금을 지급한 때에는 지체 없이 당해 결제수단을 제공한 사업자로 하여금 재화 등의 대금의 청구를 정지 또는 취소하도록 요청합니다. 다만, 제1항 단서 및 제2항의 경우에는 그러하지 아니할 수 있습니다.<br>
4.	회사, 유료서비스 등의 대금을 지급 받은 자 또는 회원과 유료서비스 이용계약을 체결한 자가 동일인이 아닌 경우에 각자는 청약철회 또는 계약해제ㆍ해지로 인한 대금환급과 관련한 의무의 이행에 있어서 연대하여 책임을 집니다.<br><br>

<b>제16조 (회사의 계약해제ㆍ해지 및 이용제한)</b><br>
1.	회사는 회원이 원탑게임즈 이용약관 제20조(이용의 제한에 관한 사항)에서 정한 행위를 하였을 경우 해당 조항에 따라 사전통지 없이 계약을 해제ㆍ해지하거나 또는 기간을 정하여 서비스이용을 제한할 수 있습니다.<br>
2.	회사가 제1항에 따라 환급할 경우에 회원이 유료서비스이용으로부터 얻은 이익 및 환불수수료(10% 또는 1,000원 중 큰 금액)에 해당하는 금액을 공제하고 환급할 수 있습니다.<br>
3.	제1항의 해제ㆍ해지는 회사가 자신이 정한 통지방법에 따라 회원에게 그 의사를 표시한 때에 효력이 발생합니다.<br>
4.	회사의 해제ㆍ해지 및 이용제한에 대하여 회원는 회사가 정한 절차에 따라 이의신청을 할 수 있습니다. 이 때 이의가 정당하다고 회사가 인정하는 경우, 회사는 즉시 서비스의 이용을 재개합니다.<br><br>

<b>제17조 (회사의 계약해제ㆍ해지의 효과)</b><br>
회원의 귀책사유에 따른 이용계약의 해제ㆍ해지의 효과는 제16조를 준용합니다. 다만, 회사는 회원에 대하여 계약해제ㆍ해지의 의사표시를 한 날로부터 3영업일 이내에 대금의 결제와 동일한 방법으로 이를 환급합니다. 동일한 방법으로 환불이 불가 시에는 이를 사전에 고지합니다.<br><br>

<b>제18조 (과오금)</b><br>
1.	회사는 과오금이 발생한 경우 이용대금의 결제와 동일한 방법으로 과오금 전액을 환불하여야 합니다. 다만, 동일한 방법으로 환불이 불가능할 때는 이를 사전에 고지합니다.<br>
2.	회사의 책임 있는 사유로 과오금이 발생한 경우 회사는 계약비용, 수수료 등에 관계없이 과오금 전액을 환불합니다. 다만, 회원의 책임 있는 사유로 과오금이 발생한 경우, 회사가 과오금을 환불하는 데 소요되는 비용은 합리적인 범위 내에서 회원이 부담하여야 합니다.<br>
3.	회사는 회원이 주장하는 과오금에 대해 환불을 거부할 경우에 정당하게 이용대금이 부과되었음을 입증할 책임을 집니다.<br>
4.	회사는 과오금의 환불절차를 디지털콘텐츠이용자보호지침에 따라 처리합니다.<br><br>

<b>제19조 (콘텐츠하자 등에 의한 회원피해보상)</b><br>
회사는 유료서비스의 하자등에 의한 회원피해보상의 기준-범위-방법 및 절차에 관한 사항을 콘텐츠이용자보호지침에 따라 처리합니다. <br><br>

<b>제20조 (책임제한)</b><br>
1.	회사는 천재지변 또는 이에 준하는 불가항력으로 인하여 유료서비스를 제공할 수 없는 경우에는 유료서비스 제공에 관한 책임이 면제됩니다.<br>
2.	회사는 회원의 귀책사유로 인한 유료서비스 이용의 장애에 대하여는 책임을 지지 않습니다.<br>
3.	회사는 회원이 유료서비스와 관련하여 게재한 정보, 자료, 사실의 신뢰도, 정확성 등의 내용에 관하여는 책임을 지지 않습니다.
4.	회사는 회원 상호간 또는 회원과 제3자 간에 유료서비스를 매개로 하여 발생한 분쟁 등에 대하여 책임을 지지 않습니다.<br><br>

<b><부칙></b><br>
1.	본 이용약관은 2018년 1월 1일부터 적용됩니다. <br>

</div>
<div style="padding:40px;text-align:center;"><a href="javascript:window.close();" class="pay_info" style="width:70px;">닫기 X</a></div>
</body>
</html>
