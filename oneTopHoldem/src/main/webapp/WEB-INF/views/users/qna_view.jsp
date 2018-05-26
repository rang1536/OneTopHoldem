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
				<div class="tt"><span class="big">고객센터</span><br>CUSTOMER CENTER</div>
			</div>
			<div class="sub_menu">
				<ul>
					<li><a href="faq">· FAQ</a></li>
					<li><a href="noticeList">· 공지사항</a></li>
					<li class="over"><a href="qnaWrite">· 1:1문의</a></li>
				</ul>
			</div>
			<div><img src="resources/img/sub_down_btn.jpg"></div>
		</div>
		<div id="container">
			<div style="padding-bottom:10px;">
				<span id="container_title">1:1문의</span>
				<div class="sub_nav"><img src="resources/img/home_icon.jpg"> HOME&nbsp;&nbsp;>&nbsp;&nbsp;고객센터&nbsp;&nbsp;>&nbsp;&nbsp;<b>1:1문의</b></div>
			</div>
			<div id="customer_center">
				<img src="resources/img/customer_icon.jpg">
				<div class="call">
					<div><b>상담전화</b> <span style="font-size:16pt;font-weight:800;color:#444;">063-273-8171</span><br><b>평일 Am 10:00 ~ Pm 19:00</b></div>
					<div style="font-size:9pt;">주말 및 공휴일은 1:1문의 게시판을 이용해주세요.</div>
				</div>
				<div class="mail">
					<div>이메일문의 <span style="font-size:10pt;color:#444;">onetopgamescom@gmail.com</span></div>
					<div style="padding-top:13px;font-size:9pt;"><span class="mail_btn">1:1문의</span>&nbsp;&nbsp;<span class="mail_btn">이메일 상담문의</span></div>
				</div>
			</div>

			<div id="notice_list">
				<table width=100% cellpadding=0 cellspacing=0>
					<tr>
						<th>제목</th>
						<th>[점검완료] 1/04 (목) "홀덤" 서버 점검 완료(9:00 ~11:00)</th>
						<th>날짜</th>
						<th>2018-01-01</th>
						<th>작성자</th>
						<th>홍길동</th>
					</tr>
				</table>
				<div style="padding:20px 0 20px 0;">
						안녕하세요. 대한민국 1등 마인드스포츠 '원탑홀덤'입니다.<br><br><br>

						금일 점검이 완료되어 정상이용이 가능합니다.<br><br>

						원탑에서 즐거운 시간 보내시길 바랍니다.<br><br>

						감사합니다.<br>
						────────────────────────────<br>
						안녕하세요. 대한민국 1등 마인드스포츠 '원탑홀덤'입니다.<br><br>

						고객 여러분께 보다 안정적인 서비스 제공을 위해 1월 4일(목)<br>
						오전 09시부터 11시까지 서버 점검이 아래와 같이 진행될 예정입니다.<br><br>

						────────────────────────────<br>
						◆ 점검 안내<br><br>

						일시 : 1월 4일(목) 오전 09시 ~ 11시 (120분)<br><br>

						내용 : 홀덤 서버 점검<br><br>

						점검 시간 동안 홀덤 게임 이용이 제한되며 오마하, 토너먼트의 경우 정상적으로<br>
						이용이 가능하십니다. 고객 여러분의 착오없으시기 바랍니다.<br><br>

						더 나은 서비스로 보답하는 원탑이 되도록 최선을 다하겠습니다.<br><br>

						감사합니다.<br>
						────────────────────────────<br><br>

						※ 점검 사정에 따라 서비스 오픈 시간이 변경 될 수 있습니다.<br>
						※ 변경된 사항이 있을 시에는 본 공지사항을 통하여 안내해 드리겠습니다.<br>
				</div>
			</div>
			<div style="padding:10px 0 15px 0"><a href="qna_list.html" class="btn01">목록보기</a></div>
		</div>
	</div>


	<!---- content ---------->



	<!---- footer ---------->

	<c:import url="../module/footer.jsp"></c:import>
	<!---- footer ---------->
</div>

</body>
</html>